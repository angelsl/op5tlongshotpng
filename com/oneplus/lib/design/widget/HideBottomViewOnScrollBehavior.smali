.class public Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field protected static final ENTER_ANIMATION_DURATION:I = 0xe1

.field protected static final EXIT_ANIMATION_DURATION:I = 0xaf

.field private static final STATE_SCROLLED_DOWN:I = 0x1

.field private static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private currentAnimator:Landroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private height:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->height:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentState:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->height:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentState:I

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .line 34
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p2, "targetY"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    nop

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;-><init>(Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    .line 125
    return-void
.end method


# virtual methods
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

    .line 61
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->height:I

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 2
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

    .line 84
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-lez p5, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-gez p5, :cond_1

    .line 87
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 89
    :cond_1
    :goto_0
    return-void
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

    .line 72
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected slideDown(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentState:I

    .line 107
    iget v3, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->height:I

    const-wide/16 v4, 0xaf

    sget-object v6, Lcom/oneplus/lib/util/AnimatorUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    .line 109
    return-void
.end method

.method protected slideUp(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 96
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->currentState:I

    .line 97
    const/4 v3, 0x0

    const-wide/16 v4, 0xe1

    sget-object v6, Lcom/oneplus/lib/util/AnimatorUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    .line 99
    return-void
.end method
