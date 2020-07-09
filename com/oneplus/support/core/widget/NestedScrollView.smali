.class public Lcom/oneplus/support/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Lcom/oneplus/support/core/view/NestedScrollingParent2;
.implements Lcom/oneplus/support/core/view/NestedScrollingChild2;
.implements Lcom/oneplus/support/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;,
        Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;,
        Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

.field private mSavedState:Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/support/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 131
    iput-boolean v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 147
    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 157
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 162
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 163
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 200
    invoke-direct {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->initScrollView()V

    .line 202
    sget-object v2, Lcom/oneplus/support/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 205
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 207
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    new-instance v1, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    .line 210
    new-instance v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    .line 213
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 215
    sget-object v0, Lcom/oneplus/support/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    .line 216
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .line 495
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 498
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 499
    .local v3, "childSize":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 500
    .local v4, "parentSpace":I
    if-le v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 502
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "childSize":I
    .end local v4    # "parentSpace":I
    :cond_1
    return v1
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 1939
    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    .line 1957
    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1963
    sub-int v0, p2, p1

    return v0

    .line 1965
    :cond_1
    return p0

    .line 1955
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .line 1362
    if-eqz p1, :cond_1

    .line 1363
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1369
    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 1840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1842
    invoke-direct {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1843
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1845
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1847
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1849
    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 2

    .line 1875
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 1877
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1878
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1879
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1880
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 1882
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1883
    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1885
    :cond_1
    :goto_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1108
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1109
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1118
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1120
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1121
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 1122
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1123
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1124
    .local v6, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1126
    .local v7, "viewBottom":I
    if-ge p2, v7, :cond_7

    if-ge v6, p3, :cond_7

    .line 1132
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    .line 1134
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_1

    .line 1136
    move-object v1, v5

    .line 1137
    move v2, v10

    goto :goto_3

    .line 1139
    :cond_1
    if-eqz p1, :cond_2

    .line 1140
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v6, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1141
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_4

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    nop

    .line 1143
    .local v8, "viewIsCloserToBoundary":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 1144
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    .line 1150
    move-object v1, v5

    goto :goto_3

    .line 1153
    :cond_5
    if-eqz v10, :cond_6

    .line 1155
    move-object v1, v5

    .line 1156
    const/4 v2, 0x1

    goto :goto_3

    .line 1157
    :cond_6
    if-eqz v8, :cond_7

    .line 1162
    move-object v1, v5

    .line 1121
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewTop":I
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1169
    .end local v4    # "i":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .line 1830
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1831
    .local v0, "scrollY":I
    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    .line 1832
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1833
    .local v1, "canFling":Z
    :goto_1
    int-to-float v2, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1834
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1835
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->fling(I)V

    .line 1837
    :cond_3
    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 1001
    iget v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1002
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1003
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1004
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1009
    nop

    .line 1010
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1009
    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    goto :goto_0

    .line 1006
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1012
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 647
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 649
    .local v0, "scrollY":I
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 650
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    .line 651
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 652
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 653
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 650
    :goto_0
    return v1

    .line 655
    .end local v0    # "scrollY":I
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 660
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 664
    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    .line 432
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 434
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 436
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 437
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTouchSlop:I

    .line 438
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 439
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 440
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 668
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 670
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .line 1341
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 1801
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1802
    return v0

    .line 1805
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1806
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .line 1349
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1350
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1352
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1353
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1352
    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 957
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 958
    .local v1, "pointerId":I
    iget v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 962
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 963
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 964
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 965
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 966
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 969
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 677
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1255
    const/4 v0, 0x1

    .line 1257
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    .line 1258
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1259
    .local v2, "containerTop":I
    add-int v3, v2, v1

    .line 1260
    .local v3, "containerBottom":I
    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1262
    .local v4, "up":Z
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Lcom/oneplus/support/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1263
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_1

    .line 1264
    move-object v5, p0

    .line 1267
    :cond_1
    if-lt p2, v2, :cond_2

    if-gt p3, v3, :cond_2

    .line 1268
    const/4 v0, 0x0

    goto :goto_2

    .line 1270
    :cond_2
    if-eqz v4, :cond_3

    sub-int v6, p2, v2

    goto :goto_1

    :cond_3
    sub-int v6, p3, v3

    .line 1271
    .local v6, "delta":I
    :goto_1
    invoke-direct {p0, v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1274
    .end local v6    # "delta":I
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1276
    :cond_4
    return v0
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1563
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1566
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1568
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1570
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1571
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1573
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 1584
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1585
    .local v0, "delta":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1586
    .local v2, "scroll":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1587
    if-eqz p2, :cond_1

    .line 1588
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1590
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1593
    :cond_2
    :goto_1
    return v2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 444
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 448
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 449
    return-void

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 453
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 457
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 458
    return-void

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 471
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 475
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 476
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 462
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 466
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    return-void

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 1287
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1288
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1290
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1292
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 1294
    .local v2, "maxJump":I
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1296
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1297
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 1298
    .local v3, "scrollDelta":I
    invoke-direct {p0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1299
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1300
    .end local v3    # "scrollDelta":I
    goto :goto_2

    .line 1302
    :cond_1
    move v3, v2

    .line 1304
    .restart local v3    # "scrollDelta":I
    const/16 v4, 0x21

    const/4 v5, 0x0

    const/16 v6, 0x82

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1305
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    goto :goto_0

    .line 1306
    :cond_2
    if-ne p1, v6, :cond_3

    .line 1307
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1308
    invoke-virtual {p0, v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1309
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1310
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 1311
    .local v8, "daBottom":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1312
    .local v9, "screenBottom":I
    sub-int v10, v8, v9

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1315
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "daBottom":I
    .end local v9    # "screenBottom":I
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 1316
    return v5

    .line 1318
    :cond_4
    if-ne p1, v6, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    neg-int v4, v3

    :goto_1
    invoke-direct {p0, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1321
    .end local v3    # "scrollDelta":I
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1322
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1328
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1329
    .local v3, "descendantFocusability":I
    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1330
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->requestFocus()Z

    .line 1331
    invoke-virtual {p0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1333
    .end local v3    # "descendantFocusability":I
    :cond_6
    const/4 v3, 0x1

    return v3
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1473
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1466
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1459
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 20

    .line 1508
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_7

    .line 1509
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 1510
    .local v13, "x":I
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 1512
    .local v14, "y":I
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScrollerY:I

    sub-int v6, v14, v0

    .line 1515
    .local v6, "dy":I
    const/4 v1, 0x0

    iget-object v3, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v12

    sub-int/2addr v6, v0

    move v15, v6

    goto :goto_0

    .line 1515
    :cond_0
    move v15, v6

    .line 1519
    .end local v6    # "dy":I
    .local v15, "dy":I
    :goto_0
    if-eqz v15, :cond_6

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v9

    .line 1521
    .local v9, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    .line 1523
    .local v8, "oldScrollY":I
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move v4, v8

    move v6, v9

    move v11, v8

    .end local v8    # "oldScrollY":I
    .local v11, "oldScrollY":I
    move/from16 v8, v16

    move/from16 v19, v9

    .end local v9    # "range":I
    .local v19, "range":I
    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/oneplus/support/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v7, v0, v11

    .line 1526
    .local v7, "scrolledDeltaY":I
    sub-int v8, v15, v7

    .line 1528
    .local v8, "unconsumedY":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1530
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    .line 1531
    .local v0, "mode":I
    if-eqz v0, :cond_3

    if-ne v0, v12, :cond_1

    move/from16 v1, v19

    .end local v19    # "range":I
    .local v1, "range":I
    if-lez v1, :cond_2

    goto :goto_1

    .end local v1    # "range":I
    .restart local v19    # "range":I
    :cond_1
    move/from16 v1, v19

    .end local v19    # "range":I
    .restart local v1    # "range":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .end local v1    # "range":I
    .restart local v19    # "range":I
    :cond_3
    move/from16 v1, v19

    .end local v19    # "range":I
    .restart local v1    # "range":I
    :goto_1
    move/from16 v18, v12

    :goto_2
    move/from16 v2, v18

    .line 1533
    .local v2, "canOverscroll":Z
    if-eqz v2, :cond_6

    .line 1534
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->ensureGlows()V

    .line 1535
    if-gtz v14, :cond_4

    if-lez v11, :cond_4

    .line 1536
    iget-object v3, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v4, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3

    .line 1537
    :cond_4
    if-lt v14, v1, :cond_6

    if-ge v11, v1, :cond_6

    .line 1538
    iget-object v3, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v4, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3

    .line 1528
    .end local v0    # "mode":I
    .end local v1    # "range":I
    .end local v2    # "canOverscroll":Z
    .restart local v19    # "range":I
    :cond_5
    move/from16 v1, v19

    .line 1545
    .end local v7    # "scrolledDeltaY":I
    .end local v8    # "unconsumedY":I
    .end local v11    # "oldScrollY":I
    .end local v19    # "range":I
    :cond_6
    :goto_3
    iput v14, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1546
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1547
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v15    # "dy":I
    goto :goto_4

    .line 1549
    :cond_7
    invoke-virtual {v10, v12}, Lcom/oneplus/support/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1550
    invoke-virtual {v10, v12}, Lcom/oneplus/support/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1553
    :cond_8
    const/4 v0, 0x0

    iput v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1555
    :goto_4
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1605
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1607
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1608
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1609
    .local v2, "screenTop":I
    add-int v3, v2, v0

    .line 1610
    .local v3, "screenBottom":I
    move v4, v3

    .line 1612
    .local v4, "actualScreenBottom":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 1617
    .local v5, "fadingEdge":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-lez v6, :cond_1

    .line 1618
    add-int/2addr v2, v5

    .line 1624
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1625
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1626
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 1627
    sub-int/2addr v3, v5

    .line 1630
    :cond_2
    const/4 v7, 0x0

    .line 1632
    .local v7, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v3, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v2, :cond_5

    .line 1637
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v0, :cond_3

    .line 1639
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    goto :goto_0

    .line 1642
    :cond_3
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v3

    add-int/2addr v7, v8

    .line 1646
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 1647
    .local v8, "bottom":I
    sub-int v9, v8, v4

    .line 1648
    .local v9, "distanceToBottom":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1650
    .end local v8    # "bottom":I
    .end local v9    # "distanceToBottom":I
    :cond_4
    goto :goto_2

    :cond_5
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-ge v8, v2, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v3, :cond_4

    .line 1655
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v0, :cond_6

    .line 1657
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    sub-int/2addr v7, v8

    goto :goto_1

    .line 1660
    :cond_6
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v2, v8

    sub-int/2addr v7, v8

    .line 1664
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1666
    :goto_2
    return v7
.end method

.method public computeVerticalScrollExtent()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1452
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1445
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 8
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1421
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1422
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1423
    .local v1, "parentSpace":I
    if-nez v0, :cond_0

    .line 1424
    return v1

    .line 1427
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1428
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1429
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1430
    .local v5, "scrollRange":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    .line 1431
    .local v6, "scrollY":I
    sub-int v7, v5, v1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1432
    .local v2, "overscrollBottom":I
    if-gez v6, :cond_1

    .line 1433
    sub-int/2addr v5, v6

    goto :goto_0

    .line 1434
    :cond_1
    if-le v6, v2, :cond_2

    .line 1435
    sub-int v7, v6, v2

    add-int/2addr v5, v7

    .line 1438
    :cond_2
    :goto_0
    return v5
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 593
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 289
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 294
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 284
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 245
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 278
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 238
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1889
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1890
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    .line 1891
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1892
    .local v0, "scrollY":I
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/16 v2, 0x15

    if-nez v1, :cond_4

    .line 1893
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1894
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    .line 1895
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    .line 1896
    .local v4, "height":I
    const/4 v5, 0x0

    .line 1897
    .local v5, "xTranslation":I
    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1898
    .local v6, "yTranslation":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1899
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    .line 1900
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    .line 1902
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1903
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 1904
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    .line 1906
    :cond_2
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1907
    iget-object v7, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1908
    iget-object v7, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1909
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1911
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1913
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "xTranslation":I
    .end local v6    # "yTranslation":I
    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1914
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1915
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    .line 1916
    .restart local v3    # "width":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    .line 1917
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 1918
    .restart local v5    # "xTranslation":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v4

    .line 1919
    .restart local v6    # "yTranslation":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1920
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    .line 1921
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    .line 1923
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1924
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v2, v7

    sub-int/2addr v4, v2

    .line 1925
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v6, v2

    .line 1927
    :cond_7
    sub-int v2, v5, v3

    int-to-float v2, v2

    int-to-float v7, v6

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1928
    const/high16 v2, 0x43340000    # 180.0f

    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-virtual {p1, v2, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1929
    iget-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1930
    iget-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1931
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1933
    :cond_8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1936
    .end local v0    # "scrollY":I
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "xTranslation":I
    .end local v6    # "yTranslation":I
    :cond_9
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 605
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 607
    invoke-direct {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_3

    .line 608
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 611
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 613
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 615
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 613
    :goto_0
    return v2

    .line 617
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_2
    return v2

    .line 620
    :cond_3
    const/4 v0, 0x0

    .line 621
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    .line 622
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v2, v3, :cond_8

    const/16 v3, 0x14

    if-eq v2, v3, :cond_6

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 638
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->pageScroll(I)Z

    goto :goto_1

    .line 631
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 632
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    .line 634
    :cond_7
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v0

    .line 636
    goto :goto_1

    .line 624
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 625
    invoke-virtual {p0, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    .line 627
    :cond_9
    invoke-virtual {p0, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v0

    .line 643
    :cond_a
    :goto_1
    return v0
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .line 1817
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1818
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 1819
    iget-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1824
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1825
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1827
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .line 1223
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1224
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1226
    .local v2, "height":I
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1227
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1229
    if-eqz v1, :cond_1

    .line 1230
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1231
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1232
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1233
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1234
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1235
    iget-object v5, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1239
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .line 407
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 414
    .local v2, "length":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 415
    .local v3, "bottomEdge":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    .line 416
    .local v4, "span":I
    if-ge v4, v2, :cond_1

    .line 417
    int-to-float v5, v4

    int-to-float v6, v2

    div-float/2addr v5, v6

    return v5

    .line 420
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    return v5
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .locals 7

    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1082
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1083
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1084
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 1085
    .local v4, "childSize":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1086
    .local v5, "parentSpace":I
    sub-int v6, v4, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1088
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "childSize":I
    .end local v5    # "parentSpace":I
    :cond_0
    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .line 392
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 397
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 398
    .local v1, "scrollY":I
    if-ge v1, v0, :cond_1

    .line 399
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2

    .line 402
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    return v2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 232
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 1479
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1484
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    .line 1485
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1484
    invoke-static {p2, v1, v2}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1487
    .local v1, "childWidthMeasureSpec":I
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1489
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1490
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 1495
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1497
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1498
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1497
    invoke-static {p2, v1, v2}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1500
    .local v1, "childWidthMeasureSpec":I
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1503
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1504
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1772
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1775
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 976
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    .line 977
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 978
    .local v0, "vscroll":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 979
    invoke-direct {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 980
    .local v1, "delta":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    .line 981
    .local v2, "range":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    .line 982
    .local v3, "oldScrollY":I
    sub-int v4, v3, v1

    .line 983
    .local v4, "newScrollY":I
    if-gez v4, :cond_1

    .line 984
    const/4 v4, 0x0

    goto :goto_0

    .line 985
    :cond_1
    if-le v4, v2, :cond_2

    .line 986
    move v4, v2

    .line 988
    :cond_2
    :goto_0
    if-eq v4, v3, :cond_3

    .line 989
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v5

    invoke-super {p0, v5, v4}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 990
    const/4 v5, 0x1

    return v5

    .line 997
    .end local v0    # "vscroll":F
    .end local v1    # "delta":I
    .end local v2    # "range":I
    .end local v3    # "oldScrollY":I
    .end local v4    # "newScrollY":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 700
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 701
    .local v2, "action":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v5, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 702
    return v4

    .line 705
    :cond_0
    and-int/lit16 v5, v2, 0xff

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    const/4 v7, -0x1

    if-eq v5, v4, :cond_6

    if-eq v5, v3, :cond_2

    const/4 v3, 0x3

    if-eq v5, v3, :cond_6

    const/4 v3, 0x6

    if-eq v5, v3, :cond_1

    goto/16 :goto_0

    .line 787
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 716
    :cond_2
    iget v5, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 717
    .local v5, "activePointerId":I
    if-ne v5, v7, :cond_3

    .line 719
    goto/16 :goto_0

    .line 722
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 723
    .local v8, "pointerIndex":I
    if-ne v8, v7, :cond_4

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NestedScrollView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    goto/16 :goto_0

    .line 729
    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 730
    .local v7, "y":I
    iget v9, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 731
    .local v9, "yDiff":I
    iget v10, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v9, v10, :cond_a

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v10

    and-int/2addr v3, v10

    if-nez v3, :cond_a

    .line 733
    iput-boolean v4, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 734
    iput v7, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 736
    iget-object v3, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 737
    iput v6, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 739
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_5

    .line 740
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 742
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_5
    goto :goto_0

    .line 778
    .end local v5    # "activePointerId":I
    .end local v7    # "y":I
    .end local v8    # "pointerIndex":I
    .end local v9    # "yDiff":I
    :cond_6
    iput-boolean v6, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 779
    iput v7, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 781
    iget-object v10, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 782
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 784
    :cond_7
    invoke-virtual {v0, v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 785
    goto :goto_0

    .line 747
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 748
    .local v5, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v7, v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->inChild(II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 749
    iput-boolean v6, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 751
    goto :goto_0

    .line 758
    :cond_9
    iput v5, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 759
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 762
    iget-object v7, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 769
    iget-object v7, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 770
    iget-object v7, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    xor-int/2addr v4, v7

    iput-boolean v4, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 771
    invoke-virtual {v0, v3, v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 772
    nop

    .line 795
    .end local v5    # "y":I
    :cond_a
    :goto_0
    iget-boolean v3, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1734
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1737
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1740
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1742
    iget-boolean v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez v2, :cond_3

    .line 1744
    iget-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSavedState:Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    if-eqz v2, :cond_1

    .line 1745
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSavedState:Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    iget v3, v3, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1746
    iput-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSavedState:Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    .line 1751
    :cond_1
    const/4 v1, 0x0

    .line 1752
    .local v1, "childSize":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1753
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1754
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1755
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v1, v3, v4

    .line 1757
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1758
    .local v0, "parentSpace":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1759
    .local v2, "currentScrollY":I
    invoke-static {v2, v0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->clamp(III)I

    move-result v3

    .line 1760
    .local v3, "newScrollY":I
    if-eq v3, v2, :cond_3

    .line 1761
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1766
    .end local v0    # "parentSpace":I
    .end local v1    # "childSize":I
    .end local v2    # "currentScrollY":I
    .end local v3    # "newScrollY":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1768
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 557
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 559
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    .line 560
    return-void

    .line 563
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 564
    .local v0, "heightMode":I
    if-nez v0, :cond_1

    .line 565
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 569
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 570
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 572
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 573
    .local v3, "childSize":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v4

    .line 574
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 575
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 579
    .local v4, "parentSpace":I
    if-ge v3, v4, :cond_2

    .line 580
    nop

    .line 581
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 580
    invoke-static {p1, v5, v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v5

    .line 583
    .local v5, "childWidthMeasureSpec":I
    const/high16 v6, 0x40000000    # 2.0f

    .line 584
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 585
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 588
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "childSize":I
    .end local v4    # "parentSpace":I
    .end local v5    # "childWidthMeasureSpec":I
    .end local v6    # "childHeightMeasureSpec":I
    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 366
    if-nez p4, :cond_0

    .line 367
    float-to-int v0, p3

    invoke-direct {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 368
    const/4 v0, 0x1

    return v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 375
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 361
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 362
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "type"    # I

    .line 332
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 333
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 355
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 357
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 321
    move/from16 v0, p5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 322
    .local v1, "oldScrollY":I
    const/4 v2, 0x0

    move-object v10, p0

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollBy(II)V

    .line 323
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v1

    .line 324
    .local v2, "myConsumed":I
    sub-int v11, v0, v2

    .line 325
    .local v11, "myUnconsumed":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v2

    move v7, v11

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    .line 327
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 345
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "target"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 308
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 309
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4}, Lcom/oneplus/support/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 310
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 1018
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1019
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1694
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1695
    const/16 p1, 0x82

    goto :goto_0

    .line 1696
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1697
    const/16 p1, 0x21

    .line 1700
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1701
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1702
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    nop

    .line 1705
    .local v0, "nextFocus":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1706
    return v1

    .line 1709
    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1710
    return v1

    .line 1713
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1970
    instance-of v0, p1, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_0

    .line 1971
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1972
    return-void

    .line 1975
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    .line 1976
    .local v0, "ss":Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1977
    iput-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSavedState:Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    .line 1978
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->requestLayout()V

    .line 1979
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1983
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1984
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1985
    .local v1, "ss":Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    iput v2, v1, Lcom/oneplus/support/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 1986
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 548
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 550
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mOnScrollChangeListener:Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 551
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/oneplus/support/core/widget/NestedScrollView;IIII)V

    .line 553
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1779
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1781
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1782
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_2

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1789
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Lcom/oneplus/support/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1791
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1792
    iget-object v1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1793
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1795
    .end local v1    # "scrollDelta":I
    :cond_1
    return-void

    .line 1783
    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "target"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 302
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 350
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .line 314
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 315
    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 316
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 800
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 802
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 804
    .local v12, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 806
    .local v13, "actionMasked":I
    const/4 v14, 0x0

    if-nez v13, :cond_0

    .line 807
    iput v14, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 809
    :cond_0
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v0, v0

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 811
    const/4 v0, 0x2

    const/4 v9, 0x1

    if-eqz v13, :cond_19

    const/4 v1, -0x1

    if-eq v13, v9, :cond_16

    if-eq v13, v0, :cond_5

    const/4 v0, 0x3

    if-eq v13, v0, :cond_3

    const/4 v0, 0x5

    if-eq v13, v0, :cond_2

    const/4 v0, 0x6

    if-eq v13, v0, :cond_1

    move v2, v9

    goto/16 :goto_6

    .line 943
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/support/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 944
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    move v2, v9

    goto/16 :goto_6

    .line 937
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 938
    .local v0, "index":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 939
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 940
    move v2, v9

    goto/16 :goto_6

    .line 927
    .end local v0    # "index":I
    :cond_3
    iget-boolean v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 928
    iget-object v2, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 928
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 930
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 933
    :cond_4
    iput v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->endDrag()V

    .line 935
    move v2, v9

    goto/16 :goto_6

    .line 838
    :cond_5
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 839
    .local v8, "activePointerIndex":I
    if-ne v8, v1, :cond_6

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move v2, v9

    goto/16 :goto_6

    .line 844
    :cond_6
    invoke-virtual {v11, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v7, v0

    .line 845
    .local v7, "y":I
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int v6, v0, v7

    .line 846
    .local v6, "deltaY":I
    const/4 v1, 0x0

    iget-object v3, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v9

    sub-int/2addr v6, v0

    .line 849
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v9

    int-to-float v0, v0

    invoke-virtual {v12, v15, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 850
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v9

    add-int/2addr v0, v1

    iput v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 852
    :cond_7
    iget-boolean v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_a

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v0, v1, :cond_a

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 854
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_8

    .line 855
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 857
    :cond_8
    iput-boolean v9, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 858
    if-lez v6, :cond_9

    .line 859
    iget v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v6, v1

    goto :goto_0

    .line 861
    :cond_9
    iget v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v6, v1

    .line 864
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_0
    iget-boolean v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_15

    .line 866
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v9

    sub-int v0, v7, v0

    iput v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    .line 869
    .local v16, "oldY":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    .line 870
    .local v5, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v4

    .line 871
    .local v4, "overscrollMode":I
    if-eqz v4, :cond_c

    if-ne v4, v9, :cond_b

    if-lez v5, :cond_b

    goto :goto_1

    :cond_b
    move v0, v14

    goto :goto_2

    :cond_c
    :goto_1
    move v0, v9

    :goto_2
    move/from16 v17, v0

    .line 876
    .local v17, "canOverscroll":Z
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move v2, v6

    move/from16 v23, v4

    .end local v4    # "overscrollMode":I
    .local v23, "overscrollMode":I
    move/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "range":I
    .local v18, "range":I
    move/from16 v5, v19

    move v15, v6

    .end local v6    # "deltaY":I
    .local v15, "deltaY":I
    move/from16 v6, v18

    move/from16 v24, v7

    .end local v7    # "y":I
    .local v24, "y":I
    move/from16 v7, v20

    move/from16 v25, v8

    .end local v8    # "activePointerIndex":I
    .local v25, "activePointerIndex":I
    move/from16 v8, v21

    move/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Lcom/oneplus/support/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 877
    invoke-virtual {v10, v14}, Lcom/oneplus/support/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 879
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 882
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v7, v0, v16

    .line 883
    .local v7, "scrolledDeltaY":I
    sub-int v8, v15, v7

    .line 884
    .local v8, "unconsumedY":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/support/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 886
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    sub-int/2addr v0, v3

    iput v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 887
    aget v0, v1, v2

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 888
    iget v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v3, v25

    goto/16 :goto_4

    .line 889
    :cond_e
    const/4 v2, 0x1

    if-eqz v17, :cond_13

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->ensureGlows()V

    .line 891
    add-int v6, v16, v15

    .line 892
    .local v6, "pulledToY":I
    if-gez v6, :cond_10

    .line 893
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 894
    move/from16 v3, v25

    .end local v25    # "activePointerIndex":I
    .local v3, "activePointerIndex":I
    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 893
    invoke-static {v0, v1, v4}, Lcom/oneplus/support/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 895
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    .line 896
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    move/from16 v0, v18

    goto :goto_3

    .line 895
    :cond_f
    move/from16 v0, v18

    goto :goto_3

    .line 898
    .end local v3    # "activePointerIndex":I
    .restart local v25    # "activePointerIndex":I
    :cond_10
    move/from16 v3, v25

    .end local v25    # "activePointerIndex":I
    .restart local v3    # "activePointerIndex":I
    move/from16 v0, v18

    .end local v18    # "range":I
    .local v0, "range":I
    if-le v6, v0, :cond_11

    .line 899
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 900
    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v9, v14

    sub-float/2addr v5, v9

    .line 899
    invoke-static {v1, v4, v5}, Lcom/oneplus/support/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 902
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_11

    .line 903
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 906
    :cond_11
    :goto_3
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_14

    .line 907
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_14

    .line 908
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_4

    .line 889
    .end local v0    # "range":I
    .end local v3    # "activePointerIndex":I
    .end local v6    # "pulledToY":I
    .restart local v18    # "range":I
    .restart local v25    # "activePointerIndex":I
    :cond_13
    move/from16 v0, v18

    move/from16 v3, v25

    .line 911
    .end local v7    # "scrolledDeltaY":I
    .end local v8    # "unconsumedY":I
    .end local v16    # "oldY":I
    .end local v17    # "canOverscroll":Z
    .end local v18    # "range":I
    .end local v23    # "overscrollMode":I
    .end local v25    # "activePointerIndex":I
    .restart local v3    # "activePointerIndex":I
    :cond_14
    :goto_4
    goto/16 :goto_6

    .line 864
    .end local v3    # "activePointerIndex":I
    .end local v15    # "deltaY":I
    .end local v24    # "y":I
    .local v6, "deltaY":I
    .local v7, "y":I
    .local v8, "activePointerIndex":I
    :cond_15
    move v15, v6

    move/from16 v24, v7

    move v3, v8

    move v2, v9

    .end local v6    # "deltaY":I
    .end local v7    # "y":I
    .end local v8    # "activePointerIndex":I
    .restart local v3    # "activePointerIndex":I
    .restart local v15    # "deltaY":I
    .restart local v24    # "y":I
    goto/16 :goto_6

    .line 914
    .end local v3    # "activePointerIndex":I
    .end local v15    # "deltaY":I
    .end local v24    # "y":I
    :cond_16
    move v2, v9

    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 915
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    iget v4, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 916
    iget v3, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 917
    .local v3, "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mMinimumVelocity:I

    if-le v4, v5, :cond_17

    .line 918
    neg-int v4, v3

    invoke-direct {v10, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    goto :goto_5

    .line 919
    :cond_17
    iget-object v14, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v20

    .line 919
    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 921
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 923
    :cond_18
    :goto_5
    iput v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->endDrag()V

    .line 925
    goto :goto_6

    .line 813
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "initialVelocity":I
    :cond_19
    move v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 814
    return v14

    .line 816
    :cond_1a
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1b

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 818
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1b

    .line 819
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 827
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1b
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 828
    iget-object v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 832
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastMotionY:I

    .line 833
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mActivePointerId:I

    .line 834
    invoke-virtual {v10, v0, v14}, Lcom/oneplus/support/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 835
    nop

    .line 948
    :goto_6
    iget-object v0, v10, Lcom/oneplus/support/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1d

    .line 949
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 951
    :cond_1d
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 952
    return v2
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 25
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 1026
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 1027
    .local v1, "overScrollMode":I
    nop

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1029
    .local v2, "canScrollHorizontal":Z
    :goto_0
    nop

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1031
    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v5

    .line 1033
    .local v6, "overScrollHorizontal":Z
    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v5

    .line 1036
    .local v7, "overScrollVertical":Z
    :goto_5
    add-int v8, p3, p1

    .line 1037
    .local v8, "newScrollX":I
    if-nez v6, :cond_6

    .line 1038
    const/4 v9, 0x0

    .end local p7    # "maxOverScrollX":I
    .local v9, "maxOverScrollX":I
    goto :goto_6

    .line 1037
    .end local v9    # "maxOverScrollX":I
    .restart local p7    # "maxOverScrollX":I
    :cond_6
    move/from16 v9, p7

    .line 1041
    .end local p7    # "maxOverScrollX":I
    .restart local v9    # "maxOverScrollX":I
    :goto_6
    add-int v10, p4, p2

    .line 1042
    .local v10, "newScrollY":I
    if-nez v7, :cond_7

    .line 1043
    const/4 v11, 0x0

    .end local p8    # "maxOverScrollY":I
    .local v11, "maxOverScrollY":I
    goto :goto_7

    .line 1042
    .end local v11    # "maxOverScrollY":I
    .restart local p8    # "maxOverScrollY":I
    :cond_7
    move/from16 v11, p8

    .line 1047
    .end local p8    # "maxOverScrollY":I
    .restart local v11    # "maxOverScrollY":I
    :goto_7
    neg-int v12, v9

    .line 1048
    .local v12, "left":I
    add-int v13, v9, p5

    .line 1049
    .local v13, "right":I
    neg-int v14, v11

    .line 1050
    .local v14, "top":I
    add-int v15, v11, p6

    .line 1052
    .local v15, "bottom":I
    const/16 v16, 0x0

    .line 1053
    .local v16, "clampedX":Z
    if-le v8, v13, :cond_8

    .line 1054
    move v8, v13

    .line 1055
    const/16 v16, 0x1

    move/from16 v4, v16

    goto :goto_8

    .line 1056
    :cond_8
    if-ge v8, v12, :cond_9

    .line 1057
    move v8, v12

    .line 1058
    const/16 v16, 0x1

    move/from16 v4, v16

    goto :goto_8

    .line 1056
    :cond_9
    move/from16 v4, v16

    .line 1061
    .end local v16    # "clampedX":Z
    .local v4, "clampedX":Z
    :goto_8
    const/16 v17, 0x0

    .line 1062
    .local v17, "clampedY":Z
    if-le v10, v15, :cond_a

    .line 1063
    move v10, v15

    .line 1064
    const/16 v17, 0x1

    move/from16 p7, v10

    move/from16 v10, v17

    goto :goto_9

    .line 1065
    :cond_a
    if-ge v10, v14, :cond_b

    .line 1066
    move v10, v14

    .line 1067
    const/16 v17, 0x1

    move/from16 p7, v10

    move/from16 v10, v17

    goto :goto_9

    .line 1065
    :cond_b
    move/from16 p7, v10

    move/from16 v10, v17

    .line 1070
    .end local v17    # "clampedY":Z
    .local v10, "clampedY":Z
    .local p7, "newScrollY":I
    :goto_9
    if-eqz v10, :cond_c

    invoke-virtual {v0, v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1071
    iget-object v5, v0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v23

    move-object/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, p7

    invoke-virtual/range {v17 .. v23}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1074
    :cond_c
    move/from16 v5, p7

    .end local p7    # "newScrollY":I
    .local v5, "newScrollY":I
    invoke-virtual {v0, v8, v5, v4, v10}, Lcom/oneplus/support/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1076
    if-nez v4, :cond_e

    if-eqz v10, :cond_d

    goto :goto_a

    :cond_d
    const/16 v24, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/16 v24, 0x1

    :goto_b
    return v24
.end method

.method public pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .line 1185
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1186
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1188
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1190
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1191
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1192
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1193
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1194
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1195
    .local v5, "bottom":I
    iget-object v6, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    if-le v6, v5, :cond_1

    .line 1196
    iget-object v6, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    sub-int v7, v5, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1199
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "bottom":I
    :cond_1
    goto :goto_1

    .line 1200
    :cond_2
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1201
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 1202
    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1205
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1207
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1671
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1672
    invoke-direct {p0, p2}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1675
    :cond_0
    iput-object p2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1677
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1678
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1720
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1721
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1720
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1723
    invoke-direct {p0, p2, p3}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 681
    if-eqz p1, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 684
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 685
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1729
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1730
    return-void
.end method

.method public scrollTo(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1859
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1861
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1862
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1863
    .local v2, "parentSpaceHorizontal":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1864
    .local v3, "childSizeHorizontal":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1865
    .local v4, "parentSpaceVertical":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1866
    .local v5, "childSizeVertical":I
    invoke-static {p1, v2, v3}, Lcom/oneplus/support/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1867
    invoke-static {p2, v4, v5}, Lcom/oneplus/support/core/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1868
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v6

    if-ne p1, v6, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    if-eq p2, v6, :cond_1

    .line 1869
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1872
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "parentSpaceHorizontal":I
    .end local v3    # "childSizeHorizontal":I
    .end local v4    # "parentSpaceVertical":I
    .end local v5    # "childSizeVertical":I
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .line 525
    iget-boolean v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 526
    iput-boolean p1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mFillViewport:Z

    .line 527
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->requestLayout()V

    .line 529
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 252
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 253
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 488
    iput-object p1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mOnScrollChangeListener:Lcom/oneplus/support/core/widget/NestedScrollView$OnScrollChangeListener;

    .line 489
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .line 543
    iput-boolean p1, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 544
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1378
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    return-void

    .line 1382
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 1383
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1384
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/support/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1385
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1386
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1387
    .local v5, "childSize":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1388
    .local v6, "parentSpace":I
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    .line 1389
    .local v7, "scrollY":I
    sub-int v8, v5, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1390
    .local v8, "maxY":I
    add-int v9, v7, p2

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int p2, v9, v7

    .line 1391
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v9

    iput v9, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1392
    iget-object v9, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10, v7, v2, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1393
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1394
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "childSize":I
    .end local v6    # "parentSpace":I
    .end local v7    # "scrollY":I
    .end local v8    # "maxY":I
    goto :goto_0

    .line 1395
    :cond_1
    iget-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1396
    iget-object v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1398
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1400
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mLastScroll:J

    .line 1401
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1410
    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1411
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 222
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 268
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1
    .param p1, "type"    # I

    .line 227
    iget-object v0, p0, Lcom/oneplus/support/core/widget/NestedScrollView;->mChildHelper:Lcom/oneplus/support/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 228
    return-void
.end method
