.class public Lcom/oneplus/support/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/view/ViewCompat$ScrollIndicators;,
        Lcom/oneplus/support/core/view/ViewCompat$NestedScrollType;,
        Lcom/oneplus/support/core/view/ViewCompat$ScrollAxis;,
        Lcom/oneplus/support/core/view/ViewCompat$ResolvedLayoutDirectionMode;,
        Lcom/oneplus/support/core/view/ViewCompat$LayoutDirectionMode;,
        Lcom/oneplus/support/core/view/ViewCompat$LayerType;,
        Lcom/oneplus/support/core/view/ViewCompat$AccessibilityLiveRegion;,
        Lcom/oneplus/support/core/view/ViewCompat$ImportantForAccessibility;,
        Lcom/oneplus/support/core/view/ViewCompat$AutofillImportance;,
        Lcom/oneplus/support/core/view/ViewCompat$OverScroll;,
        Lcom/oneplus/support/core/view/ViewCompat$FocusRelativeDirection;,
        Lcom/oneplus/support/core/view/ViewCompat$FocusRealDirection;,
        Lcom/oneplus/support/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 444
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 460
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 3383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3320
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3321
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 3323
    :cond_0
    return-void
.end method

.method public static animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 1743
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1744
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1746
    :cond_0
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 1747
    .local v0, "vpa":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_1

    .line 1748
    new-instance v1, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {v1, p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 1749
    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    :cond_1
    return-object v0
.end method

.method private static bindTempDetach()V
    .locals 4

    .line 1561
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 1563
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    goto :goto_0

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sTempDetachBound:Z

    .line 1569
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3192
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    .line 3194
    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1451
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 2985
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2986
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2987
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2989
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2990
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2991
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2994
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 2937
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2938
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2939
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2941
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2942
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2943
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2946
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 2249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2250
    invoke-static {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->unwrap(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 2251
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2252
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v1, v0, :cond_0

    .line 2253
    new-instance v2, Landroid/view/WindowInsets;

    invoke-direct {v2, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v0, v2

    .line 2255
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2257
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_1
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1599
    invoke-virtual {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 1601
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_1

    .line 1602
    invoke-static {}, Lcom/oneplus/support/core/view/ViewCompat;->bindTempDetach()V

    .line 1604
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 1606
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1609
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1612
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1615
    :goto_1
    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 2769
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2770
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 2772
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2773
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 2776
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 2812
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2813
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 2815
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2816
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 2818
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2588
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 2590
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2591
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 2594
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "type"    # I

    .line 2739
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 2740
    move-object v1, p0

    check-cast v1, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/support/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0

    .line 2742
    :cond_0
    if-nez p5, :cond_1

    .line 2743
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0

    .line 2745
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2557
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 2560
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2561
    move-object v1, p0

    check-cast v1, Lcom/oneplus/support/core/view/NestedScrollingChild;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/support/core/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 2564
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "type"    # I

    .line 2707
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 2708
    move-object v1, p0

    check-cast v1, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/support/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0

    .line 2710
    :cond_0
    if-nez p6, :cond_1

    .line 2711
    invoke-static/range {p0 .. p5}, Lcom/oneplus/support/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0

    .line 2714
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1576
    invoke-virtual {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    goto :goto_1

    .line 1578
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_1

    .line 1579
    invoke-static {}, Lcom/oneplus/support/core/view/ViewCompat;->bindTempDetach()V

    .line 1581
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 1583
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1589
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1592
    :goto_1
    return-void
.end method

.method public static generateViewId()I
    .locals 3

    .line 3369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3370
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0

    .line 3373
    :cond_0
    :goto_0
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3375
    .local v0, "result":I
    add-int/lit8 v1, v0, 0x1

    .line 3376
    .local v1, "newValue":I
    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3377
    :cond_1
    sget-object v2, Lcom/oneplus/support/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3378
    return v0

    .line 3380
    .end local v0    # "result":I
    .end local v1    # "newValue":I
    :cond_2
    goto :goto_0
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1465
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    return v0

    .line 1467
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1122
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1123
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_0

    .line 1124
    new-instance v1, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1127
    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2346
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 2348
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    if-eqz v0, :cond_1

    .line 2349
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    invoke-interface {v0}, Lcom/oneplus/support/core/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 2350
    :cond_1
    const/4 v0, 0x0

    .line 2348
    :goto_0
    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2391
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 2393
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    if-eqz v0, :cond_1

    .line 2394
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    invoke-interface {v0}, Lcom/oneplus/support/core/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 2395
    :cond_1
    const/4 v0, 0x0

    .line 2393
    :goto_0
    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 3029
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3030
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3032
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 3150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3151
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3153
    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3156
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 3158
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2027
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2028
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0

    .line 2030
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .locals 2

    .line 465
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 468
    :cond_0
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 469
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 470
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 471
    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 473
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 474
    return-object v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2154
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0

    .line 2156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 992
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0

    .line 994
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result v0

    return v0

    .line 725
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1217
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result v0

    return v0

    .line 1219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1205
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0

    .line 1292
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1664
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1422
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1436
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1405
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1709
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1710
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0

    .line 1713
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_1

    .line 1715
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 1716
    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    goto :goto_0

    .line 1717
    :catch_0
    move-exception v1

    .line 1720
    :goto_0
    sput-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    .line 1723
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1725
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1726
    :catch_1
    move-exception v0

    .line 1732
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1676
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0

    .line 1679
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_1

    .line 1681
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 1682
    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    goto :goto_0

    .line 1683
    :catch_0
    move-exception v1

    .line 1686
    :goto_0
    sput-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    .line 1689
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1691
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1692
    :catch_1
    move-exception v0

    .line 1698
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3213
    invoke-virtual {p0}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    return v0

    .line 3215
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Px;
    .end annotation

    .line 1531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1532
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    return v0

    .line 1534
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Px;
    .end annotation

    .line 1515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1516
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    return v0

    .line 1518
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1328
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 1330
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1908
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1937
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1961
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1969
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1977
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1985
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1993
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3122
    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    move-result v0

    return v0

    .line 3124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 2084
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2087
    :cond_0
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2088
    const/4 v0, 0x0

    return-object v0

    .line 2090
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1628
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2049
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0

    .line 2051
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2097
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2098
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0

    .line 2100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2001
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2009
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2877
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0

    .line 2879
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 848
    sget-boolean v0, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 849
    return v1

    .line 851
    :cond_0
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 853
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 854
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 855
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    .line 857
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 858
    return v1

    .line 862
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 863
    :catchall_1
    move-exception v0

    .line 864
    .restart local v0    # "t":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/oneplus/support/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 865
    return v1
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3357
    invoke-virtual {p0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    return v0

    .line 3359
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2527
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2528
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 2530
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2531
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0}, Lcom/oneplus/support/core/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 2533
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I

    .line 2672
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 2673
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    goto :goto_0

    .line 2674
    :cond_0
    if-nez p1, :cond_1

    .line 2675
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 2677
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 3052
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0

    .line 3054
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2306
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0

    .line 2308
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 878
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 879
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0

    .line 881
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3040
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 3042
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3268
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    return v0

    .line 3270
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0

    .line 1072
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 835
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    return v0

    .line 838
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2835
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    return v0

    .line 2837
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3239
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v0

    return v0

    .line 3241
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2846
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0

    .line 2848
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2862
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2863
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    return v0

    .line 2865
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2470
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 2472
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2473
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0}, Lcom/oneplus/support/core/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 2475
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2319
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    return v0

    .line 2321
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2183
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2184
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 3304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3305
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3307
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I

    .line 2954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2955
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 2956
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2957
    invoke-static {}, Lcom/oneplus/support/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2958
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 2960
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2961
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2962
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 2963
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2966
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2967
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2966
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2971
    .end local v3    # "p":Landroid/view/View;
    :cond_1
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    .line 2975
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2976
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2975
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2977
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2979
    .end local v0    # "parentRect":Landroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    goto :goto_0

    .line 2980
    :cond_3
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    .line 2982
    :goto_0
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I

    .line 2906
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2907
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 2908
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2909
    invoke-static {}, Lcom/oneplus/support/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2910
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 2912
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2913
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2914
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 2915
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2918
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2919
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2918
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2923
    .end local v3    # "p":Landroid/view/View;
    :cond_1
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    .line 2927
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2928
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2927
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2929
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2931
    .end local v0    # "parentRect":Landroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    goto :goto_0

    .line 2932
    :cond_3
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    .line 2934
    :goto_0
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 2224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2225
    invoke-static {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->unwrap(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 2226
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2227
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v1, v0, :cond_0

    .line 2228
    new-instance v2, Landroid/view/WindowInsets;

    invoke-direct {v2, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v0, v2

    .line 2230
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2232
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_1
    return-object p1
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 612
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "info"    # Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 642
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 643
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 580
    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1092
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 1094
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 907
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 912
    :goto_0
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 929
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 930
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 934
    :goto_0
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 947
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 950
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 952
    :goto_0
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 969
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 970
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 972
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 974
    :goto_0
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2109
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    .line 2110
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2111
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 2113
    :cond_1
    :goto_0
    return-void
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1351
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1352
    .local v0, "targetView":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_0

    .line 1355
    return-object v0

    .line 1353
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveSizeAndState(III)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1388
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3335
    invoke-virtual {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 3337
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "delegate"    # Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    .line 668
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 669
    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mode"    # I

    .line 1500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1501
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1503
    :cond_0
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2287
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 2288
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
        .annotation build Lcom/oneplus/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1800
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1801
    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "autofillHints"    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 702
    invoke-virtual {p0, p1}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    .line 704
    :cond_0
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2332
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2334
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2336
    :goto_0
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 2361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 2362
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_5

    .line 2367
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2368
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2369
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2370
    .local v1, "hasTint":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2371
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2372
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2374
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2376
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_3
    goto :goto_2

    .line 2377
    :cond_4
    instance-of v0, p0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    if-eqz v0, :cond_5

    .line 2378
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2380
    :cond_5
    :goto_2
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 2408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 2409
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_5

    .line 2414
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2415
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2416
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2417
    .local v1, "hasTint":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2418
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2419
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2421
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2423
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_3
    goto :goto_2

    .line 2424
    :cond_4
    instance-of v0, p0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    if-eqz v0, :cond_5

    .line 2425
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/TintableBackgroundView;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2427
    :cond_5
    :goto_2
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 8
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2128
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ViewCompat"

    if-nez v1, :cond_0

    .line 2130
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v5, "setChildrenDrawingOrderEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 2131
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    goto :goto_0

    .line 2132
    :catch_0
    move-exception v1

    .line 2133
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2135
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2138
    :cond_0
    :try_start_1
    sget-object v1, Lcom/oneplus/support/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2143
    :catch_1
    move-exception v1

    .line 2144
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2141
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 2142
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 2139
    :catch_3
    move-exception v1

    .line 2140
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    nop

    .line 2146
    :goto_2
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 3014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3015
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 3017
    :cond_0
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "elevation"    # F

    .line 2016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2017
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2019
    :cond_0
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fitSystemWindows"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2169
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2170
    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isFocusedByDefault"    # Z

    .line 3286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3287
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusedByDefault(Z)V

    .line 3289
    :cond_0
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "hasTransientState"    # Z

    .line 892
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 893
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 895
    :cond_0
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mode"    # I

    .line 1018
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1019
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 1020
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1024
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1025
    const/4 p1, 0x2

    .line 1028
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1030
    :cond_2
    :goto_0
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mode"    # I

    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 767
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 769
    :cond_0
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isCluster"    # Z

    .line 3252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3253
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    .line 3255
    :cond_0
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "labeledId"    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param

    .line 1230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1231
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    .line 1233
    :cond_0
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 1266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1267
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1271
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1273
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1275
    :goto_0
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1180
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1181
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutDirection"    # I

    .line 1313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1314
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1316
    :cond_0
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enabled"    # Z

    .line 2446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2447
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    goto :goto_0

    .line 2449
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2450
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 2453
    :cond_1
    :goto_0
    return-void
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "nextClusterForwardId"    # I

    .line 3226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3227
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextClusterForwardId(I)V

    .line 3229
    :cond_0
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    .line 2192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2193
    if-nez p1, :cond_0

    .line 2194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2195
    return-void

    .line 2198
    :cond_0
    new-instance v0, Lcom/oneplus/support/core/view/ViewCompat$1;

    invoke-direct {v0, p1}, Lcom/oneplus/support/core/view/ViewCompat$1;-><init>(Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2208
    :cond_1
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "overScrollMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 539
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 540
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param
    .param p2, "top"    # I
        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param
    .param p3, "end"    # I
        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param
    .param p4, "bottom"    # I
        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param

    .line 1552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1553
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1555
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1557
    :goto_0
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1924
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1925
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1953
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 1954
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Lcom/oneplus/support/core/view/PointerIconCompat;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pointerIcon"    # Lcom/oneplus/support/core/view/PointerIconCompat;

    .line 3132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 3133
    if-eqz p1, :cond_0

    .line 3134
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/PointerIcon;

    .line 3133
    invoke-virtual {p0, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 3136
    :cond_1
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1843
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 1844
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1857
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 1858
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1871
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 1872
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2271
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 2272
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1884
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1885
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1897
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1898
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "indicators"    # I

    .line 3069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3070
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    .line 3072
    :cond_0
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .line 3103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3104
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 3106
    :cond_0
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3171
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3173
    :cond_0
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transitionName"    # Ljava/lang/String;

    .line 2062
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2063
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    .line 2065
    :cond_0
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2066
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 2068
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    :goto_0
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1766
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1767
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1783
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1784
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "translationZ"    # F

    .line 2037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2038
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 2040
    :cond_0
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1815
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 1816
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1830
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 1831
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "z"    # F

    .line 2895
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2896
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    .line 2898
    :cond_0
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 3180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3181
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 3183
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "axes"    # I

    .line 2491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2492
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 2494
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2495
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 2497
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 2638
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 2639
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result v0

    return v0

    .line 2640
    :cond_0
    if-nez p2, :cond_1

    .line 2641
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2643
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2510
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2511
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto :goto_0

    .line 2512
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 2513
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild;

    invoke-interface {v0}, Lcom/oneplus/support/core/view/NestedScrollingChild;->stopNestedScroll()V

    .line 2515
    :cond_1
    :goto_0
    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I

    .line 2655
    instance-of v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 2656
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    goto :goto_0

    .line 2657
    :cond_0
    if-nez p1, :cond_1

    .line 2658
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 2660
    :cond_1
    :goto_0
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 2997
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2998
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2999
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3000
    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .line 3200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3201
    invoke-virtual {p0, p1}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 3203
    :cond_0
    return-void
.end method
