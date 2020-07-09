.class public abstract Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1885
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1896
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1897
    return-void
.end method

.method public static getTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 2173
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2174
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    return-object v1
.end method

.method public static setTag(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # Ljava/lang/Object;

    .line 2161
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2162
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iput-object p1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2163
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .line 2013
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rect"    # Landroid/graphics/Rect;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 2474
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public getScrimColor(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)I
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .line 1979
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/high16 v0, -0x1000000

    return v0
.end method

.method public getScrimOpacity(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)F
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation build Lcom/oneplus/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .line 1997
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDirty(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2094
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 2039
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 0
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Lcom/oneplus/support/core/view/WindowInsetsCompat;",
            ")",
            "Lcom/oneplus/support/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 2396
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-object p3
.end method

.method public onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1908
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 2068
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2086
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 0

    .line 1918
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
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

    .line 1940
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 2148
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .line 2120
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .line 2348
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 2376
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .line 2317
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .line 2284
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 2227
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onRequestChildRectangleOnScreen(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Z)Z"
        }
    .end annotation

    .line 2418
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 2435
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 2456
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 2201
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2251
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
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

    .line 1959
    .local p0, "this":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;, "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method
