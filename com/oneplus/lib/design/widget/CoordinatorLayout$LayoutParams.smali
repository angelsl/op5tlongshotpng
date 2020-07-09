.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2544
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2494
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2500
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2507
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2513
    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2520
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2527
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2539
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2545
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2548
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2494
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2500
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2507
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2513
    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2520
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2527
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2539
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2550
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2553
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2556
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_anchor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2558
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_anchorGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2562
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_keyline:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2565
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_insetEdge:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2566
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_dodgeInsetEdges:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2568
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2570
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v0, :cond_0

    .line 2571
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_op_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    .line 2574
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2576
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    .line 2578
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 2580
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2591
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2494
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2500
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2507
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2513
    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2520
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2527
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2539
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2592
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2587
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2494
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2500
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2507
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2513
    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2520
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2527
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2539
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2588
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2583
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2494
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2500
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2507
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2513
    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2520
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2527
    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2539
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2584
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V
    .locals 4
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    .line 2801
    iget v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2802
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2803
    if-ne v0, p2, :cond_1

    .line 2804
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2805
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2806
    return-void

    .line 2808
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2812
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2813
    .local v2, "directChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2814
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v0, p2, :cond_5

    if-eqz v0, :cond_5

    .line 2816
    if-ne v0, p1, :cond_3

    .line 2817
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2818
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2819
    return-void

    .line 2821
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2824
    :cond_3
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2825
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 2815
    :cond_4
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2828
    .end local v0    # "p":Landroid/view/ViewParent;
    :cond_5
    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2829
    .end local v2    # "directChild":Landroid/view/View;
    nop

    .line 2838
    return-void

    .line 2830
    :cond_6
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2831
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2832
    return-void

    .line 2834
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .locals 3
    .param p1, "other"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 2870
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2871
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v1, p2}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 2872
    .local v1, "absInset":I
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2873
    invoke-static {v2, p2}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2872
    :goto_0
    return v2
.end method

.method private verifyAnchorView(Landroid/view/View;Lcom/oneplus/lib/design/widget/CoordinatorLayout;)Z
    .locals 4
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    .line 2846
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2847
    return v2

    .line 2850
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2851
    .local v0, "directChild":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2852
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p2, :cond_4

    .line 2854
    if-eqz v1, :cond_3

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 2858
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2859
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 2853
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2855
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2856
    return v2

    .line 2862
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_4
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2863
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .line 2732
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2733
    return-void
.end method

.method checkAnchorChanged()Z
    .locals 2

    .line 2678
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 2760
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_1

    .line 2761
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_0

    .line 2762
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2760
    :goto_1
    return v0
.end method

.method didBlockInteraction()Z
    .locals 1

    .line 2689
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 2690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2692
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method findAnchorView(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "forChild"    # Landroid/view/View;

    .line 2785
    iget v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2787
    return-object v0

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Lcom/oneplus/lib/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2791
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    .line 2793
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnchorId()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/IdRes;
    .end annotation

    .line 2601
    iget v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 2627
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 1

    .line 2740
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 1

    .line 2670
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateAnchor()V
    .locals 1

    .line 2772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2773
    return-void
.end method

.method isBlockingInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;

    .line 2707
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_0

    .line 2708
    const/4 v0, 0x1

    return v0

    .line 2711
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_1

    .line 2712
    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v1

    goto :goto_0

    .line 2713
    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2711
    return v0
.end method

.method isNestedScrollAccepted()Z
    .locals 1

    .line 2736
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 1

    .line 2748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2749
    return-void
.end method

.method resetNestedScroll()V
    .locals 1

    .line 2728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2729
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 1

    .line 2724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2725
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "id"    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param

    .line 2615
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2616
    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2617
    return-void
.end method

.method public setBehavior(Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;)V
    .locals 1
    .param p1, "behavior"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2640
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_1

    .line 2641
    if-eqz v0, :cond_0

    .line 2643
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2646
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    .line 2647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2650
    if-eqz p1, :cond_1

    .line 2652
    invoke-virtual {p1, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 2655
    :cond_1
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .line 2744
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2745
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 2662
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2663
    return-void
.end method
