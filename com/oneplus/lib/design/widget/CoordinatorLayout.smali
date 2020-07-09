.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Lcom/oneplus/support/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;

.field private final mTempRect4:Landroid/graphics/Rect;

.field private final mTempRect5:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    const-class v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 116
    .local v0, "pkg":Ljava/lang/Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 123
    .end local v0    # "pkg":Ljava/lang/Package;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 124
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    .line 126
    :cond_1
    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 130
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 135
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect5:Landroid/graphics/Rect;

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 184
    new-instance v0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    .line 200
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_opKeylines:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 203
    .local v1, "keylineArrayRes":I
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 205
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 206
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 207
    .local v3, "density":F
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v4, v4

    .line 208
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 209
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v6, v5

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    aput v7, v6, v5

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "density":F
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_0
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_opStatusBarBackground:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 216
    new-instance v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 217
    return-void
.end method

.method private constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "lp"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .line 1010
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1011
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1014
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1016
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    sub-int/2addr v4, p3

    iget v5, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 1015
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1014
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1017
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 1019
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v5, p4

    iget v6, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 1018
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1017
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1021
    .local v3, "top":I
    add-int v4, v2, p3

    add-int v5, v3, p4

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1022
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 6
    .param p1, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 799
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    return-object p1

    .line 803
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 804
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 805
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 807
    .local v3, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 809
    .local v4, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 811
    invoke-virtual {v4, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 812
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 814
    goto :goto_1

    .line 803
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_2
    :goto_1
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;
    .param p5, "lp"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .param p6, "childWidth"    # I
    .param p7, "childHeight"    # I

    .line 936
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget v3, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 937
    invoke-static {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v3

    .line 936
    invoke-static {v3, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 938
    .local v3, "absGravity":I
    iget v4, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 939
    invoke-static {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v4

    .line 938
    invoke-static {v4, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 942
    .local v4, "absAnchorGravity":I
    and-int/lit8 v5, v3, 0x7

    .line 943
    .local v5, "hgrav":I
    and-int/lit8 v6, v3, 0x70

    .line 944
    .local v6, "vgrav":I
    and-int/lit8 v7, v4, 0x7

    .line 945
    .local v7, "anchorHgrav":I
    and-int/lit8 v8, v4, 0x70

    .line 953
    .local v8, "anchorVgrav":I
    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v7, v10, :cond_1

    if-eq v7, v9, :cond_0

    .line 956
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 957
    .local v11, "left":I
    goto :goto_0

    .line 959
    .end local v11    # "left":I
    :cond_0
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 960
    .restart local v11    # "left":I
    goto :goto_0

    .line 962
    .end local v11    # "left":I
    :cond_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 966
    .restart local v11    # "left":I
    :goto_0
    const/16 v12, 0x50

    const/16 v13, 0x10

    if-eq v8, v13, :cond_3

    if-eq v8, v12, :cond_2

    .line 969
    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 970
    .local v14, "top":I
    goto :goto_1

    .line 972
    .end local v14    # "top":I
    :cond_2
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    .line 973
    .restart local v14    # "top":I
    goto :goto_1

    .line 975
    .end local v14    # "top":I
    :cond_3
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 980
    .restart local v14    # "top":I
    :goto_1
    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_4

    .line 983
    sub-int v11, v11, p6

    .line 984
    goto :goto_2

    .line 987
    :cond_4
    goto :goto_2

    .line 989
    :cond_5
    div-int/lit8 v9, p6, 0x2

    sub-int/2addr v11, v9

    .line 993
    :goto_2
    if-eq v6, v13, :cond_7

    if-eq v6, v12, :cond_6

    .line 996
    sub-int v14, v14, p7

    .line 997
    goto :goto_3

    .line 1000
    :cond_6
    goto :goto_3

    .line 1002
    :cond_7
    div-int/lit8 v9, p7, 0x2

    sub-int/2addr v14, v9

    .line 1006
    :goto_3
    add-int v9, v11, p6

    add-int v10, v14, p7

    move-object/from16 v12, p4

    invoke-virtual {v12, v11, v14, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1007
    return-void
.end method

.method private getKeyline(I)I
    .locals 4
    .param p1, "index"    # I

    .line 559
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v1

    .line 564
    :cond_0
    if-ltz p1, :cond_2

    array-length v3, v0

    if-lt p1, v3, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    aget v0, v0, p1

    return v0

    .line 565
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 397
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 398
    .local v0, "useCustomOrder":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 399
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 400
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    .line 401
    .local v3, "childIndex":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 402
    .local v4, "child":Landroid/view/View;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v3    # "childIndex":I
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 405
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    .line 406
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    :cond_2
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1512
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1136
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1137
    .local v7, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1138
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1139
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 1140
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1137
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1142
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1146
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 1147
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 1148
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 1149
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 1152
    :cond_0
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1153
    .local v8, "out":Landroid/graphics/Rect;
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1153
    move-object v4, v7

    move-object v5, v8

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/oneplus/support/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1155
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1156
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1052
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1053
    .local v1, "anchorRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1054
    .local v2, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1055
    invoke-virtual {p0, p1, p3, v1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1057
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1058
    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .line 1072
    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1073
    .local v1, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1074
    invoke-static {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v2

    .line 1073
    invoke-static {v2, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 1076
    .local v2, "absGravity":I
    and-int/lit8 v3, v2, 0x7

    .line 1077
    .local v3, "hgrav":I
    and-int/lit8 v4, v2, 0x70

    .line 1078
    .local v4, "vgrav":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    .line 1079
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 1080
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1081
    .local v7, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1083
    .local v8, "childHeight":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 1084
    sub-int v10, v5, p2

    .end local p2    # "keyline":I
    .local v10, "keyline":I
    goto :goto_0

    .line 1083
    .end local v10    # "keyline":I
    .restart local p2    # "keyline":I
    :cond_0
    move/from16 v10, p2

    .line 1087
    .end local p2    # "keyline":I
    .restart local v10    # "keyline":I
    :goto_0
    move-object/from16 v11, p0

    invoke-direct {v11, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v12

    sub-int/2addr v12, v7

    .line 1088
    .local v12, "left":I
    const/4 v13, 0x0

    .line 1090
    .local v13, "top":I
    if-eq v3, v9, :cond_2

    const/4 v9, 0x5

    if-eq v3, v9, :cond_1

    .line 1094
    goto :goto_1

    .line 1096
    :cond_1
    add-int/2addr v12, v7

    .line 1097
    goto :goto_1

    .line 1099
    :cond_2
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v12, v9

    .line 1103
    :goto_1
    const/16 v9, 0x10

    if-eq v4, v9, :cond_4

    const/16 v9, 0x50

    if-eq v4, v9, :cond_3

    .line 1107
    goto :goto_2

    .line 1109
    :cond_3
    add-int/2addr v13, v8

    .line 1110
    goto :goto_2

    .line 1112
    :cond_4
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v13, v9

    .line 1117
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    iget v14, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v14

    sub-int v14, v5, v14

    sub-int/2addr v14, v7

    iget v15, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 1118
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1117
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1120
    .end local v12    # "left":I
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v12

    iget v14, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v14

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v14

    sub-int v14, v6, v14

    sub-int/2addr v14, v8

    iget v15, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 1121
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1120
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1124
    .end local v13    # "top":I
    .local v12, "top":I
    add-int v13, v9, v7

    add-int v14, v12, v8

    move-object/from16 v15, p1

    invoke-virtual {v15, v9, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1125
    return-void
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "inset"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .line 1325
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect5:Landroid/graphics/Rect;

    .line 1331
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1332
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1334
    return-void

    .line 1337
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1338
    .local v1, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 1339
    .local v2, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1340
    .local v3, "dodgeRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1342
    if-eqz v2, :cond_3

    invoke-virtual {v2, p0, p1, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1344
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1345
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | Bounds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1350
    :cond_3
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1353
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1355
    return-void

    .line 1358
    :cond_4
    iget v4, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v4, p3}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1361
    .local v4, "absDodgeInsetEdges":I
    const/4 v5, 0x0

    .line 1362
    .local v5, "offsetY":Z
    and-int/lit8 v6, v4, 0x30

    const/16 v7, 0x30

    if-ne v6, v7, :cond_5

    .line 1363
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v6, v7

    .line 1364
    .local v6, "distance":I
    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_5

    .line 1365
    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-direct {p0, p1, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1366
    const/4 v5, 0x1

    .line 1369
    .end local v6    # "distance":I
    :cond_5
    and-int/lit8 v6, v4, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_6

    .line 1370
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v6, v7

    .line 1371
    .restart local v6    # "distance":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_6

    .line 1372
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v7

    invoke-direct {p0, p1, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1373
    const/4 v5, 0x1

    .line 1376
    .end local v6    # "distance":I
    :cond_6
    const/4 v6, 0x0

    if-nez v5, :cond_7

    .line 1377
    invoke-direct {p0, p1, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1380
    :cond_7
    const/4 v7, 0x0

    .line 1381
    .local v7, "offsetX":Z
    and-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1382
    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v8, v9

    .line 1383
    .local v8, "distance":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_8

    .line 1384
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    invoke-direct {p0, p1, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1385
    const/4 v7, 0x1

    .line 1388
    .end local v8    # "distance":I
    :cond_8
    and-int/lit8 v8, v4, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 1389
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int/2addr v8, v9

    .line 1390
    .restart local v8    # "distance":I
    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v8, v9, :cond_9

    .line 1391
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v9

    invoke-direct {p0, p1, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1392
    const/4 v7, 0x1

    .line 1395
    .end local v8    # "distance":I
    :cond_9
    if-nez v7, :cond_a

    .line 1396
    invoke-direct {p0, p1, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1398
    :cond_a
    return-void
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    return-object v0

    .line 578
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_1

    .line 581
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 583
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_1

    .line 586
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_3
    move-object v0, p2

    :goto_0
    nop

    .line 592
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 593
    .local v1, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v1, :cond_4

    .line 594
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 595
    sget-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 597
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 598
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 599
    nop

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 599
    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 601
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v2, v5

    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 603
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 606
    .end local v1    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not inflate Behavior subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 412
    .local v3, "intercepted":Z
    const/4 v4, 0x0

    .line 414
    .local v4, "newBlock":Z
    const/4 v5, 0x0

    .line 416
    .local v5, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    .line 418
    .local v6, "action":I
    iget-object v7, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 419
    .local v7, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v0, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 422
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 423
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_a

    .line 424
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 425
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 426
    .local v11, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    .line 428
    .local v12, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    const/4 v13, 0x1

    if-nez v3, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    if-eqz v6, :cond_4

    .line 431
    if-eqz v12, :cond_9

    .line 432
    if-nez v5, :cond_1

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 434
    .local v22, "now":J
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v14, v22

    move-wide/from16 v16, v22

    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 437
    .end local v22    # "now":J
    :cond_1
    if-eqz v2, :cond_3

    if-eq v2, v13, :cond_2

    goto :goto_1

    .line 442
    :cond_2
    invoke-virtual {v12, v0, v10, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {v12, v0, v10, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 440
    nop

    .line 443
    :goto_1
    goto :goto_4

    .line 449
    :cond_4
    if-nez v3, :cond_7

    if-eqz v12, :cond_7

    .line 450
    if-eqz v2, :cond_6

    if-eq v2, v13, :cond_5

    goto :goto_2

    .line 455
    :cond_5
    invoke-virtual {v12, v0, v10, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_2

    .line 452
    :cond_6
    invoke-virtual {v12, v0, v10, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 453
    nop

    .line 458
    :goto_2
    if-eqz v3, :cond_7

    .line 459
    iput-object v10, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 465
    :cond_7
    invoke-virtual {v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v14

    .line 466
    .local v14, "wasBlocking":Z
    invoke-virtual {v11, v0, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v15

    .line 467
    .local v15, "isBlocking":Z
    if-eqz v15, :cond_8

    if-nez v14, :cond_8

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    move v4, v13

    .line 468
    if-eqz v15, :cond_9

    if-nez v4, :cond_9

    .line 471
    goto :goto_5

    .line 423
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v12    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v14    # "wasBlocking":Z
    .end local v15    # "isBlocking":Z
    :cond_9
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 475
    .end local v9    # "i":I
    :cond_a
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 477
    return v3
.end method

.method private prepareChildren()V
    .locals 8

    .line 634
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->clear()V

    .line 637
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 638
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 641
    .local v3, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 643
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 646
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 647
    if-ne v4, v0, :cond_0

    .line 648
    goto :goto_2

    .line 650
    :cond_0
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 651
    .local v5, "other":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 652
    .local v6, "otherLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6, p0, v5, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 653
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 655
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 658
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v2, v5}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 646
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 637
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 668
    return-void
.end method

.method private resetTouchBehaviors()V
    .locals 11

    .line 369
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 371
    .local v0, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 373
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 375
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v0, p0, v2, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 376
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 378
    .end local v1    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 381
    .end local v0    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 382
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 383
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 384
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 385
    .local v3, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 382
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 388
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 1179
    if-nez p0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static resolveGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 1163
    if-nez p0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 1171
    if-nez p0, :cond_0

    const v0, 0x800035

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetX"    # I

    .line 1401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1402
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v1, p2, :cond_0

    .line 1403
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v1, p2, v1

    .line 1404
    .local v1, "dx":I
    invoke-static {p1, v1}, Lcom/oneplus/support/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1405
    iput p2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1407
    .end local v1    # "dx":I
    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetY"    # I

    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1411
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v1, p2, :cond_0

    .line 1412
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v1, p2, v1

    .line 1413
    .local v1, "dy":I
    invoke-static {p1, v1}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1414
    iput p2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1416
    .end local v1    # "dy":I
    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 2

    .line 2962
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2963
    return-void

    .line 2966
    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2967
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_1

    .line 2968
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    .line 2981
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 2984
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    .line 2986
    :goto_0
    return-void
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .line 1520
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 1523
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1525
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1526
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1531
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1532
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1652
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1430
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1432
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1433
    .local v2, "child":Landroid/view/View;
    nop

    .line 1434
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1435
    .local v3, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1436
    .local v4, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_0

    .line 1437
    invoke-virtual {v4, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1431
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1441
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1619
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1620
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v2, p0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1621
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1622
    .local v2, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {p0, p2, v4, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1624
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 1627
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v2    # "secondRect":Landroid/graphics/Rect;
    :cond_3
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1184
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1185
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_2

    .line 1186
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    .line 1187
    .local v1, "scrimAlpha":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1188
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 1189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1191
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1195
    .local v2, "saved":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    .line 1199
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1198
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1202
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    int-to-float v6, v3

    .line 1203
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1202
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1205
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1208
    .end local v1    # "scrimAlpha":F
    .end local v2    # "saved":I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 294
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 297
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 299
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 300
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 304
    :cond_0
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->invalidate()V

    .line 307
    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 5

    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, "hasDependencies":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1491
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1492
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1493
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1494
    const/4 v0, 0x1

    .line 1495
    goto :goto_1

    .line 1491
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1499
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v0, v2, :cond_3

    .line 1500
    if-eqz v0, :cond_2

    .line 1501
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->addPreDrawListener()V

    goto :goto_2

    .line 1503
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->removePreDrawListener()V

    .line 1506
    :cond_3
    :goto_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    .line 1647
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1632
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1637
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1638
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V

    return-object v0

    .line 1639
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1640
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1642
    :cond_1
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 927
    :cond_0
    if-eqz p2, :cond_1

    .line 928
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 930
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 932
    :goto_0
    return-void

    .line 924
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 925
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1454
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1455
    if-eqz v0, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1458
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1481
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 1482
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1472
    .local v0, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1473
    if-eqz v0, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 678
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 679
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1035
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1036
    .local v9, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1037
    .local v10, "childHeight":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, v9

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1039
    invoke-direct {p0, v0, p4, v9, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1040
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 910
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 911
    return-void
.end method

.method final getLastWindowInsets()Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1830
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 613
    .local v0, "result":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v1, :cond_2

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 615
    .local v1, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 616
    .local v2, "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_0
    if-eqz v1, :cond_0

    const-class v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 617
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;

    move-object v2, v3

    if-nez v3, :cond_0

    .line 618
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 620
    :cond_0
    if-eqz v2, :cond_1

    .line 622
    :try_start_0
    invoke-interface {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    goto :goto_1

    .line 623
    :catch_0
    move-exception v3

    .line 624
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default behavior class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CoordinatorLayout"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 630
    .end local v1    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    :cond_2
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .line 688
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 683
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1604
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1605
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1557
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1558
    .local v10, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1559
    iget-object v11, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1560
    .local v11, "anchorRect":Landroid/graphics/Rect;
    iget-object v12, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1561
    .local v12, "childRect":Landroid/graphics/Rect;
    iget-object v13, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1563
    .local v13, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, v0, v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1564
    const/4 v14, 0x0

    invoke-virtual {v8, v9, v14, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1566
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1567
    .local v15, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1568
    .local v7, "childHeight":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v13

    move-object v5, v10

    move v6, v15

    move/from16 v16, v7

    .end local v7    # "childHeight":I
    .local v16, "childHeight":I
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1570
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v14, 0x1

    :cond_1
    move v0, v14

    .line 1572
    .local v0, "changed":Z
    move/from16 v1, v16

    .end local v16    # "childHeight":I
    .local v1, "childHeight":I
    invoke-direct {v8, v10, v13, v15, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1574
    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 1575
    .local v2, "dx":I
    iget v3, v13, Landroid/graphics/Rect;->top:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 1577
    .local v3, "dy":I
    if-eqz v2, :cond_2

    .line 1578
    invoke-static {v9, v2}, Lcom/oneplus/support/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1580
    :cond_2
    if-eqz v3, :cond_3

    .line 1581
    invoke-static {v9, v3}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1584
    :cond_3
    if-eqz v0, :cond_4

    .line 1586
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1587
    .local v4, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_4

    .line 1588
    iget-object v5, v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v8, v9, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1592
    .end local v0    # "changed":Z
    .end local v1    # "childHeight":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v4    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v11    # "anchorRect":Landroid/graphics/Rect;
    .end local v12    # "childRect":Landroid/graphics/Rect;
    .end local v13    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v15    # "childWidth":I
    :cond_4
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 227
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 228
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 233
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 235
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 240
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 241
    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 13
    .param p1, "type"    # I

    .line 1228
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1229
    .local v0, "layoutDirection":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1230
    .local v1, "childCount":I
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 1231
    .local v2, "inset":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1232
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_e

    .line 1233
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1234
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1237
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 1238
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1240
    .local v7, "checkChild":Landroid/view/View;
    iget-object v8, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v8, v7, :cond_0

    .line 1241
    invoke-virtual {p0, v4, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1237
    .end local v7    # "checkChild":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1246
    .end local v6    # "j":I
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1247
    .local v6, "drawRect":Landroid/graphics/Rect;
    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1250
    iget v8, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1251
    iget v8, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v8, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    .line 1253
    .local v8, "absInsetEdge":I
    and-int/lit8 v9, v8, 0x70

    const/16 v10, 0x30

    if-eq v9, v10, :cond_3

    const/16 v10, 0x50

    if-eq v9, v10, :cond_2

    goto :goto_2

    .line 1258
    :cond_2
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v10

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1255
    :cond_3
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 1256
    nop

    .line 1261
    :goto_2
    and-int/lit8 v9, v8, 0x7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    goto :goto_3

    .line 1266
    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    iget v11, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1263
    :cond_5
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 1272
    .end local v8    # "absInsetEdge":I
    :cond_6
    :goto_3
    iget v8, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    .line 1273
    invoke-direct {p0, v4, v2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1276
    :cond_7
    if-nez p1, :cond_9

    .line 1278
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1279
    .local v8, "lastDrawRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1280
    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1281
    goto :goto_7

    .line 1283
    :cond_8
    invoke-virtual {p0, v4, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1287
    .end local v8    # "lastDrawRect":Landroid/graphics/Rect;
    :cond_9
    add-int/lit8 v8, v3, 0x1

    .local v8, "j":I
    :goto_4
    if-ge v8, v1, :cond_d

    .line 1288
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1289
    .local v9, "checkChild":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1290
    .local v10, "checkLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 1292
    .local v11, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v11, :cond_c

    invoke-virtual {v11, p0, v9, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1293
    if-nez p1, :cond_a

    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1296
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1297
    goto :goto_6

    .line 1301
    :cond_a
    const/4 v12, 0x2

    if-eq p1, v12, :cond_b

    .line 1310
    invoke-virtual {v11, p0, v9, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v12

    .local v12, "handled":Z
    goto :goto_5

    .line 1305
    .end local v12    # "handled":Z
    :cond_b
    invoke-virtual {v11, p0, v9, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1306
    const/4 v12, 0x1

    .line 1307
    .restart local v12    # "handled":Z
    nop

    .line 1314
    :goto_5
    if-ne p1, v7, :cond_c

    .line 1317
    invoke-virtual {v10, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    .line 1287
    .end local v9    # "checkChild":Landroid/view/View;
    .end local v10    # "checkLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v12    # "handled":Z
    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1232
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "drawRect":Landroid/graphics/Rect;
    .end local v8    # "j":I
    :cond_d
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1322
    .end local v3    # "i":I
    :cond_e
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 247
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 254
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 255
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 871
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 873
    .local v0, "inset":I
    :goto_0
    if-lez v0, :cond_1

    .line 874
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 878
    .end local v0    # "inset":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 482
    const/4 v0, 0x0

    .line 484
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static {p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 487
    .local v1, "action":I
    if-nez v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 491
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 493
    .local v2, "intercepted":Z
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 497
    :cond_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 501
    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 850
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 851
    .local v0, "layoutDirection":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 852
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 853
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 854
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 856
    goto :goto_1

    .line 859
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 860
    .local v4, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 862
    .local v5, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v5, :cond_1

    invoke-virtual {v5, p0, v3, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 863
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 852
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 866
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 835
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 839
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    .line 841
    :cond_0
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_1

    .line 842
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 844
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    .line 846
    :goto_0
    return-void

    .line 836
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .locals 35
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 712
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 716
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v9

    .line 717
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    .line 718
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    .line 719
    .local v11, "paddingBottom":I
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    .line 720
    .local v12, "layoutDirection":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v14, v1

    .line 721
    .local v14, "isRtl":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 722
    .local v15, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 723
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 724
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 726
    .local v17, "heightSize":I
    add-int v18, v8, v10

    .line 727
    .local v18, "widthPadding":I
    add-int v19, v9, v11

    .line 728
    .local v19, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 729
    .local v1, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v2

    .line 730
    .local v2, "heightUsed":I
    const/4 v3, 0x0

    .line 732
    .local v3, "childState":I
    iget-object v4, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v20, v0

    .line 734
    .local v20, "applyInsets":Z
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 735
    .local v5, "childCount":I
    const/4 v0, 0x0

    move v4, v0

    move/from16 v34, v3

    move v3, v1

    move v1, v2

    move/from16 v2, v34

    .local v1, "heightUsed":I
    .local v2, "childState":I
    .local v3, "widthUsed":I
    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_d

    .line 736
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/View;

    .line 737
    .local v21, "child":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v13, 0x8

    if-ne v0, v13, :cond_2

    .line 739
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    const/16 v22, 0x0

    goto/16 :goto_6

    .line 742
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 744
    .local v13, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v0, 0x0

    .line 745
    .local v0, "keylineWidthUsed":I
    move/from16 v23, v0

    .end local v0    # "keylineWidthUsed":I
    .local v23, "keylineWidthUsed":I
    iget v0, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v0, :cond_9

    if-eqz v15, :cond_9

    .line 746
    iget v0, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {v7, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v0

    .line 747
    .local v0, "keylinePos":I
    move/from16 v24, v1

    .end local v1    # "heightUsed":I
    .local v24, "heightUsed":I
    iget v1, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 748
    invoke-static {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v1

    .line 747
    invoke-static {v1, v12}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 750
    .local v1, "keylineGravity":I
    move/from16 v25, v2

    .end local v2    # "childState":I
    .local v25, "childState":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    if-eqz v14, :cond_4

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    if-eqz v14, :cond_5

    .line 752
    :cond_4
    sub-int v2, v16, v10

    sub-int/2addr v2, v0

    move/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "widthUsed":I
    .local v27, "widthUsed":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v23, v2

    .end local v23    # "keylineWidthUsed":I
    .local v2, "keylineWidthUsed":I
    goto :goto_3

    .line 750
    .end local v2    # "keylineWidthUsed":I
    .end local v27    # "widthUsed":I
    .restart local v3    # "widthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_5
    move/from16 v27, v3

    .line 753
    .end local v3    # "widthUsed":I
    .restart local v27    # "widthUsed":I
    if-ne v1, v2, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    if-eqz v14, :cond_8

    .line 755
    :cond_7
    sub-int v2, v0, v8

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v23, v2

    .end local v23    # "keylineWidthUsed":I
    .restart local v2    # "keylineWidthUsed":I
    goto :goto_3

    .line 753
    .end local v2    # "keylineWidthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 745
    .end local v0    # "keylinePos":I
    .end local v24    # "heightUsed":I
    .end local v25    # "childState":I
    .end local v27    # "widthUsed":I
    .local v1, "heightUsed":I
    .local v2, "childState":I
    .restart local v3    # "widthUsed":I
    :cond_9
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v27, v3

    const/4 v3, 0x0

    .line 759
    .end local v1    # "heightUsed":I
    .end local v2    # "childState":I
    .end local v3    # "widthUsed":I
    .restart local v24    # "heightUsed":I
    .restart local v25    # "childState":I
    .restart local v27    # "widthUsed":I
    :goto_3
    move/from16 v0, p1

    .line 760
    .local v0, "childWidthMeasureSpec":I
    move/from16 v1, p2

    .line 761
    .local v1, "childHeightMeasureSpec":I
    if-eqz v20, :cond_a

    invoke-static/range {v21 .. v21}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 764
    iget-object v2, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 765
    invoke-virtual {v3}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 766
    .local v2, "horizInsets":I
    iget-object v3, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v3}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move/from16 v26, v0

    .end local v0    # "childWidthMeasureSpec":I
    .local v26, "childWidthMeasureSpec":I
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 767
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 769
    .local v3, "vertInsets":I
    sub-int v0, v16, v2

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 771
    .end local v26    # "childWidthMeasureSpec":I
    .restart local v0    # "childWidthMeasureSpec":I
    move/from16 v26, v0

    .end local v0    # "childWidthMeasureSpec":I
    .restart local v26    # "childWidthMeasureSpec":I
    sub-int v0, v17, v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move/from16 v28, v0

    .end local v1    # "childHeightMeasureSpec":I
    .local v0, "childHeightMeasureSpec":I
    goto :goto_4

    .line 761
    .end local v2    # "horizInsets":I
    .end local v3    # "vertInsets":I
    .end local v26    # "childWidthMeasureSpec":I
    .local v0, "childWidthMeasureSpec":I
    .restart local v1    # "childHeightMeasureSpec":I
    :cond_a
    move/from16 v26, v0

    .line 775
    .end local v0    # "childWidthMeasureSpec":I
    .restart local v26    # "childWidthMeasureSpec":I
    move/from16 v28, v1

    .end local v1    # "childHeightMeasureSpec":I
    .local v28, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v29

    .line 776
    .local v29, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v29, :cond_b

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v3, v24

    .end local v24    # "heightUsed":I
    .local v3, "heightUsed":I
    move-object/from16 v1, p0

    move/from16 v31, v25

    .end local v25    # "childState":I
    .local v31, "childState":I
    move-object/from16 v2, v21

    move/from16 v33, v3

    move/from16 v32, v27

    const/16 v22, 0x0

    .end local v3    # "heightUsed":I
    .end local v27    # "widthUsed":I
    .local v32, "widthUsed":I
    .local v33, "heightUsed":I
    move/from16 v3, v26

    move/from16 v24, v4

    .end local v4    # "i":I
    .local v24, "i":I
    move/from16 v4, v23

    move/from16 v25, v5

    .end local v5    # "childCount":I
    .local v25, "childCount":I
    move/from16 v5, v28

    move/from16 v27, v6

    .end local v6    # "heightMode":I
    .local v27, "heightMode":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    .end local v31    # "childState":I
    .end local v32    # "widthUsed":I
    .end local v33    # "heightUsed":I
    .restart local v4    # "i":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    .local v24, "heightUsed":I
    .local v25, "childState":I
    .local v27, "widthUsed":I
    :cond_b
    move/from16 v33, v24

    move/from16 v31, v25

    move/from16 v32, v27

    const/16 v22, 0x0

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    .line 778
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v24, "i":I
    .local v25, "childCount":I
    .local v27, "heightMode":I
    .restart local v31    # "childState":I
    .restart local v32    # "widthUsed":I
    .restart local v33    # "heightUsed":I
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v28

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 782
    :cond_c
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v18, v0

    iget v1, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move/from16 v1, v32

    .end local v32    # "widthUsed":I
    .local v1, "widthUsed":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 785
    .end local v1    # "widthUsed":I
    .local v0, "widthUsed":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v19, v1

    iget v2, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v33

    .end local v33    # "heightUsed":I
    .local v2, "heightUsed":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 787
    .end local v2    # "heightUsed":I
    .local v1, "heightUsed":I
    nop

    .line 788
    invoke-static/range {v21 .. v21}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 787
    move/from16 v3, v31

    .end local v31    # "childState":I
    .local v3, "childState":I
    invoke-static {v3, v2}, Lcom/oneplus/support/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v2

    move v3, v0

    .line 735
    .end local v0    # "widthUsed":I
    .end local v13    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    .end local v23    # "keylineWidthUsed":I
    .end local v26    # "childWidthMeasureSpec":I
    .end local v28    # "childHeightMeasureSpec":I
    .end local v29    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .local v2, "childState":I
    .local v3, "widthUsed":I
    :goto_6
    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v25

    move/from16 v6, v27

    .end local v24    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_2

    .end local v25    # "childCount":I
    .end local v27    # "heightMode":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    :cond_d
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    move/from16 v34, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v34

    .line 791
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v1, "widthUsed":I
    .local v2, "heightUsed":I
    .local v3, "childState":I
    .restart local v25    # "childCount":I
    .restart local v27    # "heightMode":I
    const/high16 v0, -0x1000000

    and-int/2addr v0, v3

    move/from16 v4, p1

    invoke-static {v1, v4, v0}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 793
    .local v0, "width":I
    shl-int/lit8 v5, v3, 0x10

    move/from16 v6, p2

    invoke-static {v2, v6, v5}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v5

    .line 795
    .local v5, "height":I
    invoke-virtual {v7, v0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 796
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 706
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 708
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 14
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1786
    move-object v7, p0

    const/4 v0, 0x0

    .line 1788
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1789
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v10, v0

    move v9, v1

    .end local v0    # "handled":Z
    .local v9, "i":I
    .local v10, "handled":Z
    :goto_0
    if-ge v9, v8, :cond_2

    .line 1790
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1791
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1792
    .local v12, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    goto :goto_1

    .line 1796
    :cond_0
    invoke-virtual {v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v13

    .line 1797
    .local v13, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v13, :cond_1

    .line 1798
    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v10

    move v10, v0

    .line 1789
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v13    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1802
    .end local v9    # "i":I
    :cond_2
    if-eqz v10, :cond_3

    .line 1803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1805
    :cond_3
    return v10
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 1810
    const/4 v0, 0x0

    .line 1812
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1813
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1814
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1815
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1816
    .local v10, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1817
    goto :goto_1

    .line 1820
    :cond_0
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 1821
    .local v11, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v11, :cond_1

    .line 1822
    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1813
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1825
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 18
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 1750
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 1751
    .local v0, "xConsumed":I
    const/4 v1, 0x0

    .line 1752
    .local v1, "yConsumed":I
    const/4 v2, 0x0

    .line 1754
    .local v2, "accepted":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1755
    .local v8, "childCount":I
    const/4 v3, 0x0

    move v10, v0

    move v11, v1

    move v12, v2

    move v9, v3

    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .local v9, "i":I
    .local v10, "xConsumed":I
    .local v11, "yConsumed":I
    .local v12, "accepted":Z
    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v9, v8, :cond_4

    .line 1756
    invoke-virtual {v7, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1757
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1758
    .local v16, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1759
    goto :goto_3

    .line 1762
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v17

    .line 1763
    .local v17, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v17, :cond_3

    .line 1764
    iget-object v6, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aput v13, v6, v14

    aput v13, v6, v13

    .line 1765
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1767
    if-lez p2, :cond_1

    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v0, v0, v13

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1768
    :cond_1
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v0, v0, v13

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    nop

    .line 1769
    .end local v10    # "xConsumed":I
    .restart local v0    # "xConsumed":I
    if-lez p3, :cond_2

    iget-object v1, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v1, v1, v14

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 1770
    :cond_2
    iget-object v1, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v1, v1, v14

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    nop

    .line 1772
    .end local v11    # "yConsumed":I
    .restart local v1    # "yConsumed":I
    const/4 v2, 0x1

    move v10, v0

    move v11, v1

    move v12, v2

    .line 1755
    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v15    # "view":Landroid/view/View;
    .end local v16    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v17    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .restart local v10    # "xConsumed":I
    .restart local v11    # "yConsumed":I
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1776
    .end local v9    # "i":I
    :cond_4
    aput v10, p4, v13

    .line 1777
    aput v11, p4, v14

    .line 1779
    if-eqz v12, :cond_5

    .line 1780
    invoke-virtual {v7, v14}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1782
    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 15
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 1725
    move-object v8, p0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1726
    .local v9, "childCount":I
    const/4 v0, 0x0

    .line 1728
    .local v0, "accepted":Z
    const/4 v1, 0x0

    move v11, v0

    move v10, v1

    .end local v0    # "accepted":Z
    .local v10, "i":I
    .local v11, "accepted":Z
    :goto_0
    if-ge v10, v9, :cond_2

    .line 1729
    invoke-virtual {p0, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1730
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1731
    .local v13, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1732
    goto :goto_1

    .line 1735
    :cond_0
    invoke-virtual {v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    .line 1736
    .local v14, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v14, :cond_1

    .line 1737
    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1739
    const/4 v0, 0x1

    move v11, v0

    .line 1728
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v14    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1743
    .end local v10    # "i":I
    :cond_2
    if-eqz v11, :cond_3

    .line 1744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1746
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1679
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1680
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1681
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1683
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1684
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1685
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1686
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1687
    .local v9, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1688
    goto :goto_1

    .line 1691
    :cond_0
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    .line 1692
    .local v10, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v10, :cond_1

    .line 1693
    move-object v2, v10

    move-object v3, p0

    move-object v4, v8

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 1684
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v10    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1696
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2900
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 2901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2902
    return-void

    .line 2905
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    .line 2906
    .local v0, "ss":Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2908
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2910
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2911
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2912
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 2913
    .local v5, "childId":I
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 2914
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 2916
    .local v7, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    if-eqz v7, :cond_1

    .line 2917
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 2918
    .local v8, "savedState":Landroid/os/Parcelable;
    if-eqz v8, :cond_1

    .line 2919
    invoke-virtual {v7, p0, v4, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2910
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v8    # "savedState":Landroid/os/Parcelable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2923
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 2927
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2929
    .local v0, "ss":Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2930
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2931
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2932
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 2933
    .local v5, "childId":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2934
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 2936
    .local v7, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    if-eqz v7, :cond_0

    .line 2938
    invoke-virtual {v7, p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 2939
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    .line 2940
    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2930
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2944
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    iput-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2945
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1657
    const/4 v0, 0x0

    .line 1659
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1660
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1661
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1662
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1663
    .local v10, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 1664
    .local v11, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v11, :cond_0

    .line 1665
    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    .line 1667
    .local v3, "accepted":Z
    or-int/2addr v0, v3

    .line 1669
    invoke-virtual {v10, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1670
    .end local v3    # "accepted":Z
    goto :goto_1

    .line 1671
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1660
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1674
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .line 1700
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1702
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1703
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1704
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1705
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1706
    .local v3, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1707
    goto :goto_1

    .line 1710
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1711
    .local v4, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 1712
    invoke-virtual {v4, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1714
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1715
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1703
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1718
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1719
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1720
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 507
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 508
    .local v3, "cancelSuper":Z
    const/4 v4, 0x0

    .line 510
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    .line 512
    .local v5, "action":I
    iget-object v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-direct {v0, v1, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v6

    move v3, v6

    if-eqz v6, :cond_1

    .line 515
    :cond_0
    iget-object v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 516
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 517
    .local v8, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_1

    .line 518
    iget-object v9, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 523
    .end local v6    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    iget-object v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 524
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_0

    .line 525
    :cond_2
    if-eqz v3, :cond_4

    .line 526
    if-nez v4, :cond_3

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 528
    .local v16, "now":J
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 531
    .end local v16    # "now":J
    :cond_3
    invoke-super {v0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 534
    :cond_4
    :goto_0
    nop

    .line 538
    if-eqz v4, :cond_5

    .line 539
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 542
    :cond_5
    if-eq v5, v7, :cond_6

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 543
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 546
    :cond_7
    return v2
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 898
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 899
    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    .line 1539
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1542
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1545
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1546
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2951
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 2953
    .local v1, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_0

    .line 2954
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2955
    const/4 v2, 0x1

    return v2

    .line 2958
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 551
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 552
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 556
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0
    .param p1, "fitSystemWindows"    # Z

    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 883
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 884
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 221
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 222
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 265
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 273
    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    :cond_4
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 280
    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 342
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 319
    .local v1, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 320
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 322
    :cond_1
    return-void
.end method

.method final setWindowInsets(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 3
    .param p1, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 348
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 349
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 352
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->requestLayout()V

    .line 355
    :cond_2
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
