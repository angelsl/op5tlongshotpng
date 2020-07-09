.class abstract Lcom/oneplus/lib/design/widget/HeaderBehavior;
.super Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 54
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 284
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 269
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method final fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 10
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Lcom/oneplus/support/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v3

    const/4 v4, 0x0

    .line 243
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 241
    move v8, p3

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/oneplus/support/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;-><init>(Lcom/oneplus/lib/design/widget/HeaderBehavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Lcom/oneplus/support/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 221
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 62
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    .line 66
    return v2

    .line 69
    :cond_1
    invoke-static {p3}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, -0x1

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_5

    goto :goto_0

    .line 83
    :cond_2
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 84
    .local v1, "activePointerId":I
    if-ne v1, v5, :cond_3

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 89
    .local v3, "pointerIndex":I
    if-ne v3, v5, :cond_4

    .line 90
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 94
    .local v4, "y":I
    iget v5, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 95
    .local v5, "yDiff":I
    iget v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v5, v6, :cond_7

    .line 96
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 97
    iput v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_0

    .line 104
    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :cond_5
    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 105
    iput v5, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 106
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 107
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 71
    :cond_6
    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 73
    .local v1, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 74
    .local v2, "y":I
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, p2, v1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 75
    iput v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 76
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 77
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 114
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 115
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    :cond_8
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    return v1
.end method

.method public onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 127
    :cond_0
    invoke-static {p3}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto/16 :goto_1

    .line 143
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 144
    .local v0, "activePointerIndex":I
    if-ne v0, v3, :cond_2

    .line 145
    return v2

    .line 148
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 149
    .local v2, "y":I
    iget v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int/2addr v3, v2

    .line 151
    .local v3, "dy":I
    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v4, v5, :cond_4

    .line 152
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 153
    if-lez v3, :cond_3

    .line 154
    sub-int/2addr v3, v5

    goto :goto_0

    .line 156
    :cond_3
    add-int/2addr v3, v5

    .line 160
    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v4, :cond_8

    .line 161
    iput v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 163
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    .line 169
    .end local v0    # "activePointerIndex":I
    .end local v2    # "y":I
    .end local v3    # "dy":I
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-static {v0, v4}, Lcom/oneplus/support/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    .line 174
    .local v0, "yvel":F
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v4

    neg-int v8, v4

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 178
    .end local v0    # "yvel":F
    :cond_6
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 179
    iput v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 180
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    .line 181
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 129
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    .local v0, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 132
    .local v3, "y":I
    invoke-virtual {p1, p2, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 133
    iput v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 134
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 135
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 188
    .end local v0    # "x":I
    .end local v3    # "y":I
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 189
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 192
    :cond_9
    return v1

    .line 137
    .restart local v0    # "x":I
    .restart local v3    # "y":I
    :cond_a
    return v2
.end method

.method final scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    nop

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    .line 226
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 203
    .local v0, "curOffset":I
    const/4 v1, 0x0

    .line 205
    .local v1, "consumed":I
    if-eqz p4, :cond_0

    if-lt v0, p4, :cond_0

    if-gt v0, p5, :cond_0

    .line 208
    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p3

    .line 210
    if-eq v0, p3, :cond_0

    .line 211
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 213
    sub-int v1, v0, p3

    .line 217
    :cond_0
    return v1
.end method
