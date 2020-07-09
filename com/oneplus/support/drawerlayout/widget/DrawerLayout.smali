.class public Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$EdgeGravity;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LockMode;,
        Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

.field private mListener:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 105
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 185
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 193
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 308
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

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .line 315
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 202
    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 214
    const/4 v1, 0x3

    iput v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 215
    iput v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 216
    iput v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 217
    iput v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    .line 239
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 242
    iput-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 316
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 318
    .local v3, "density":F
    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 319
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    .line 321
    .local v4, "minVel":F
    new-instance v5, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v5, p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;I)V

    iput-object v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 322
    new-instance v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    const/4 v5, 0x5

    invoke-direct {v1, p0, v5}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;I)V

    iput-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 324
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    .line 325
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 326
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->setMinVelocity(F)V

    .line 327
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v6, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, v6}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Lcom/oneplus/lib/util/ViewDragHelper;)V

    .line 329
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    .line 330
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/util/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 331
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->setMinVelocity(F)V

    .line 332
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, v5}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Lcom/oneplus/lib/util/ViewDragHelper;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 337
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 340
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;-><init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;)V

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 342
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_0

    .line 344
    new-instance v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$1;

    invoke-direct {v1, p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$1;-><init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 353
    const/16 v1, 0x500

    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 355
    sget-object v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 357
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    nop

    .line 361
    .end local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 359
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 362
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iput-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 366
    :cond_1
    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 369
    return-void
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 776
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 777
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 779
    .local v1, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 780
    .local v2, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 781
    .end local v1    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 782
    .end local v2    # "handled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 783
    .local v1, "offsetX":F
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 784
    .local v2, "offsetY":F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 785
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 786
    .local v3, "handled":Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v2, v3

    .line 788
    .end local v1    # "offsetX":F
    .end local v3    # "handled":Z
    .local v2, "handled":Z
    :goto_0
    return v2
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 796
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 797
    .local v0, "offsetX":F
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 798
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 799
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 800
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 801
    .local v3, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 802
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_0

    .line 803
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    .line 805
    :cond_0
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 806
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 808
    :cond_1
    return-object v2
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .line 1007
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1008
    const-string v0, "LEFT"

    return-object v0

    .line 1010
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1011
    const-string v0, "RIGHT"

    return-object v0

    .line 1013
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .line 1327
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1328
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1329
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1331
    :cond_1
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .line 1877
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1878
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1879
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1880
    .local v2, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    .line 1881
    const/4 v3, 0x1

    return v3

    .line 1878
    .end local v2    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1884
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .line 1947
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 2087
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2089
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2087
    :goto_0
    return v0
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .line 763
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 767
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 1210
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1214
    :cond_0
    invoke-static {p1, p2}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1215
    const/4 v0, 0x1

    return v0

    .line 1211
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1168
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1170
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1173
    invoke-direct {p0, v1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1174
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1177
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1179
    invoke-direct {p0, v1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1180
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1183
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1187
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1188
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1191
    invoke-direct {p0, v1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1192
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1195
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1197
    invoke-direct {p0, v1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1198
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1201
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .line 1160
    sget-boolean v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 1161
    return-void

    .line 1163
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1164
    invoke-direct {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1165
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .line 902
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 903
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 904
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 905
    .local v2, "child":Landroid/view/View;
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 908
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 911
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 903
    .end local v2    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 513
    if-nez p1, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1913
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1914
    return-void

    .line 1919
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1920
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1921
    .local v1, "isDrawerOpen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1922
    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1923
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1924
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1925
    const/4 v1, 0x1

    .line 1926
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    .line 1929
    :cond_1
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1933
    .end local v2    # "i":I
    :cond_3
    if-nez v1, :cond_5

    .line 1934
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1935
    .local v2, "nonDrawerViewsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 1936
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1937
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1938
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1935
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1943
    .end local v2    # "nonDrawerViewsCount":I
    .end local v3    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1944
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2059
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2061
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 2062
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 2065
    :cond_1
    :goto_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2076
    :goto_1
    sget-boolean v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_2

    .line 2077
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    .line 2079
    :cond_2
    return-void
.end method

.method cancelChildViewTouch()V
    .locals 11

    .line 1963
    iget-boolean v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    .line 1964
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1965
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1967
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1968
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1969
    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1968
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1971
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1972
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1974
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v1    # "childCount":I
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .line 952
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 953
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1903
    instance-of v0, p1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1791
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1792
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 1802
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1803
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1807
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1808
    return-void

    .line 1804
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    invoke-static {p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1749
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1750
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .line 1759
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1763
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1764
    .local v0, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1765
    iput v3, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1766
    iput v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    goto :goto_0

    .line 1767
    :cond_0
    const/4 v1, 0x4

    if-eqz p2, :cond_2

    .line 1768
    iget v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1770
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1771
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1772
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1771
    invoke-virtual {v1, p1, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1774
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1777
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1778
    iget v3, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v3, v2, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1779
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1781
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1782
    return-void

    .line 1760
    .end local v0    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeDrawers()V
    .locals 1

    .line 1639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1640
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1645
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1646
    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1647
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1649
    .local v4, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v5, v4, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v5, :cond_0

    .line 1650
    goto :goto_2

    .line 1653
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1655
    .local v5, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1656
    iget-object v6, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    neg-int v7, v5

    .line 1657
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1656
    invoke-virtual {v6, v3, v7, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_1

    .line 1659
    :cond_1
    iget-object v6, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    .line 1660
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1659
    invoke-virtual {v6, v3, v7, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1663
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1645
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v5    # "childWidth":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1666
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1667
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1669
    if-eqz v0, :cond_4

    .line 1670
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1672
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .line 1311
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1312
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1313
    .local v1, "scrimOpacity":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1314
    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1315
    .local v3, "onscreen":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1313
    .end local v3    # "onscreen":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    .end local v2    # "i":I
    :cond_0
    iput v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    .line 1319
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->continueSettling(Z)Z

    move-result v2

    .line 1320
    .local v2, "leftDraggerSettling":Z
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->continueSettling(Z)Z

    move-result v3

    .line 1321
    .local v3, "rightDraggerSettling":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 1322
    :cond_1
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1324
    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 1544
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1545
    .local v0, "childrenCount":I
    if-eqz v0, :cond_3

    .line 1546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1547
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1550
    .local v2, "y":F
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1551
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1555
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1556
    goto :goto_1

    .line 1560
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1561
    const/4 v5, 0x1

    return v5

    .line 1550
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1566
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 1541
    .end local v0    # "childrenCount":I
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 853
    .local v0, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 854
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 856
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 859
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 860
    .local v2, "listenerCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 861
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 860
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 865
    .end local v2    # "listenerCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 870
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 872
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 873
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 877
    .end local v1    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 880
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 881
    .local v0, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 882
    iput v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 883
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 886
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 887
    .local v1, "listenerCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 888
    iget-object v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 887
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 892
    .end local v1    # "listenerCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 895
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 899
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 918
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 921
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 922
    .local v0, "listenerCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 923
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 922
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 926
    .end local v0    # "listenerCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1403
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v9

    .line 1404
    .local v9, "height":I
    invoke-virtual {v0, v8}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    .line 1405
    .local v10, "drawingContent":Z
    const/4 v1, 0x0

    .local v1, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1407
    .local v2, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1408
    .local v11, "restoreCount":I
    const/4 v3, 0x3

    if-eqz v10, :cond_5

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 1410
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 1411
    invoke-virtual {v0, v5}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1412
    .local v6, "v":Landroid/view/View;
    if-eq v6, v8, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 1413
    invoke-static {v6}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v0, v6}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1414
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    if-ge v12, v9, :cond_0

    .line 1415
    goto :goto_1

    .line 1418
    :cond_0
    invoke-virtual {v0, v6, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1419
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1420
    .local v12, "vright":I
    if-le v12, v1, :cond_1

    move v1, v12

    .line 1421
    .end local v12    # "vright":I
    :cond_1
    goto :goto_1

    .line 1422
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1423
    .local v12, "vleft":I
    if-ge v12, v2, :cond_3

    move v2, v12

    .line 1410
    .end local v6    # "v":Landroid/view/View;
    .end local v12    # "vleft":I
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1426
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v6

    invoke-virtual {v7, v1, v5, v2, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v12, v1

    move v13, v2

    goto :goto_2

    .line 1408
    .end local v4    # "childCount":I
    :cond_5
    move v12, v1

    move v13, v2

    .line 1428
    .end local v1    # "clipLeft":I
    .end local v2    # "clipRight":I
    .local v12, "clipLeft":I
    .local v13, "clipRight":I
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v14

    .line 1429
    .local v14, "result":Z
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1431
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_6

    if-eqz v10, :cond_6

    .line 1432
    iget v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    ushr-int/lit8 v15, v3, 0x18

    .line 1433
    .local v15, "baseAlpha":I
    int-to-float v3, v15

    mul-float/2addr v3, v1

    float-to-int v6, v3

    .line 1434
    .local v6, "imag":I
    shl-int/lit8 v1, v6, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v5, v1, v2

    .line 1435
    .local v5, "color":I
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1437
    int-to-float v2, v12

    int-to-float v4, v13

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    move/from16 v18, v5

    .end local v5    # "color":I
    .local v18, "color":I
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "imag":I
    .local v17, "imag":I
    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1438
    .end local v15    # "baseAlpha":I
    .end local v17    # "imag":I
    .end local v18    # "color":I
    goto/16 :goto_3

    :cond_6
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    .line 1439
    invoke-virtual {v0, v8, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1440
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1441
    .local v1, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1442
    .local v3, "childRight":I
    iget-object v6, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/util/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1443
    .local v6, "drawerPeekDistance":I
    int-to-float v15, v3

    int-to-float v4, v6

    div-float/2addr v15, v4

    .line 1444
    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1445
    .local v2, "alpha":F
    iget-object v4, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v15, v3, v1

    .line 1446
    move/from16 v17, v1

    .end local v1    # "shadowWidth":I
    .local v17, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1445
    invoke-virtual {v4, v3, v5, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1447
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1448
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1449
    .end local v2    # "alpha":F
    .end local v3    # "childRight":I
    .end local v6    # "drawerPeekDistance":I
    .end local v17    # "shadowWidth":I
    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    .line 1450
    invoke-virtual {v0, v8, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1451
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1452
    .restart local v1    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1453
    .local v3, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1454
    .local v4, "showing":I
    iget-object v6, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/util/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1455
    .restart local v6    # "drawerPeekDistance":I
    int-to-float v15, v4

    int-to-float v2, v6

    div-float/2addr v15, v2

    .line 1456
    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1457
    .restart local v2    # "alpha":F
    iget-object v5, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v15, v3, v1

    move/from16 v17, v1

    .end local v1    # "shadowWidth":I
    .restart local v17    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1458
    move/from16 v18, v4

    .end local v4    # "showing":I
    .local v18, "showing":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1457
    invoke-virtual {v5, v15, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1459
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1460
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1462
    .end local v2    # "alpha":F
    .end local v3    # "childLeft":I
    .end local v6    # "drawerPeekDistance":I
    .end local v17    # "shadowWidth":I
    .end local v18    # "showing":I
    :cond_8
    :goto_3
    return v14
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .line 987
    nop

    .line 988
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 987
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 989
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 990
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 991
    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 992
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    .line 993
    .local v4, "childAbsGravity":I
    and-int/lit8 v5, v4, 0x7

    if-ne v5, v0, :cond_0

    .line 994
    return-object v3

    .line 990
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .line 957
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 958
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 959
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 960
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 961
    .local v3, "childLp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v4, v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 962
    return-object v2

    .line 958
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    .line 1951
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1952
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1953
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1954
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1955
    return-object v2

    .line 1952
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1958
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1889
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1908
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1894
    instance-of v0, p1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1895
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    goto :goto_0

    .line 1896
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1897
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1898
    :cond_1
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1894
    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 395
    sget-boolean v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 396
    iget v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    return v0

    .line 398
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 3
    .param p1, "edgeGravity"    # I

    .line 654
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 656
    .local v0, "layoutDirection":I
    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 688
    :cond_0
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v2, v1, :cond_1

    .line 689
    return v2

    .line 691
    :cond_1
    if-nez v0, :cond_2

    .line 692
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 693
    .local v2, "endLockMode":I
    :goto_0
    if-eq v2, v1, :cond_c

    .line 694
    return v2

    .line 678
    .end local v2    # "endLockMode":I
    :cond_3
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    if-eq v2, v1, :cond_4

    .line 679
    return v2

    .line 681
    :cond_4
    if-nez v0, :cond_5

    .line 682
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 683
    .local v2, "startLockMode":I
    :goto_1
    if-eq v2, v1, :cond_c

    .line 684
    return v2

    .line 668
    .end local v2    # "startLockMode":I
    :cond_6
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    if-eq v2, v1, :cond_7

    .line 669
    return v2

    .line 671
    :cond_7
    if-nez v0, :cond_8

    .line 672
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 673
    .local v2, "rightLockMode":I
    :goto_2
    if-eq v2, v1, :cond_c

    .line 674
    return v2

    .line 658
    .end local v2    # "rightLockMode":I
    :cond_9
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v2, v1, :cond_a

    .line 659
    return v2

    .line 661
    :cond_a
    if-nez v0, :cond_b

    .line 662
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_3

    :cond_b
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    .line 663
    .local v2, "leftLockMode":I
    :goto_3
    if-eq v2, v1, :cond_c

    .line 664
    return v2

    .line 699
    .end local v2    # "leftLockMode":I
    :cond_c
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 711
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 715
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1

    .line 712
    .end local v0    # "drawerGravity":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 748
    nop

    .line 749
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 748
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 750
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    return-object v1

    .line 752
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object v1

    .line 755
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 948
    .local v0, "gravity":I
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .line 1838
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1839
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1842
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1821
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1825
    .local v0, "drawerLp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1822
    .end local v0    # "drawerLp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1471
    .local v0, "gravity":I
    nop

    .line 1472
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1471
    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1473
    .local v1, "absGravity":I
    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1475
    return v3

    .line 1477
    :cond_0
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_1

    .line 1479
    return v3

    .line 1481
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .line 1869
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1870
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1871
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1873
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1854
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1855
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 969
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 970
    .local v0, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 971
    .local v1, "width":I
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 972
    .local v2, "oldPos":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 973
    .local v3, "newPos":I
    sub-int v4, v3, v2

    .line 975
    .local v4, "dx":I
    nop

    .line 976
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    neg-int v5, v4

    .line 975
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 977
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 978
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1024
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1026
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1018
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1020
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1385
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1386
    iget-boolean v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1390
    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .local v0, "inset":I
    :goto_0
    goto :goto_1

    .line 1392
    .end local v0    # "inset":I
    :cond_1
    const/4 v0, 0x0

    .line 1394
    .restart local v0    # "inset":I
    :goto_1
    if-lez v0, :cond_2

    .line 1395
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1396
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1399
    .end local v0    # "inset":I
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1490
    .local v0, "action":I
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    .line 1491
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1493
    .local v1, "interceptForDrag":Z
    const/4 v2, 0x0

    .line 1495
    .local v2, "interceptForTap":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_1

    goto :goto_0

    .line 1514
    :cond_0
    iget-object v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1515
    iget-object v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v5}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1516
    iget-object v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightCallback:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v5}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1523
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1524
    iput-boolean v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1525
    iput-boolean v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1497
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1498
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1499
    .local v6, "y":F
    iput v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    .line 1500
    iput v6, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    .line 1501
    iget v7, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 1502
    iget-object v7, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1503
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {p0, v7}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1504
    const/4 v2, 0x1

    .line 1507
    .end local v7    # "child":Landroid/view/View;
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1508
    iput-boolean v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1509
    nop

    .line 1529
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_4
    :goto_0
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :cond_6
    :goto_1
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1978
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1980
    const/4 v0, 0x1

    return v0

    .line 1982
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1987
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1988
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1989
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1990
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1992
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1994
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1220
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    .line 1221
    sub-int v2, p4, p2

    .line 1222
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1223
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_b

    .line 1224
    invoke-virtual {v0, v4}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1226
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 1227
    goto/16 :goto_6

    .line 1230
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1232
    .local v7, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    invoke-virtual {v0, v6}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1233
    iget v5, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v8, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v9, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1234
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1235
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1233
    invoke-virtual {v6, v5, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 1237
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1238
    .local v8, "childWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1242
    .local v9, "childHeight":I
    const/4 v10, 0x3

    invoke-virtual {v0, v6, v10}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1243
    neg-int v10, v8

    int-to-float v11, v8

    iget v12, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 1244
    .local v10, "childLeft":I
    add-int v11, v8, v10

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    .local v11, "newOffset":F
    goto :goto_1

    .line 1246
    .end local v10    # "childLeft":I
    .end local v11    # "newOffset":F
    :cond_2
    int-to-float v10, v8

    iget v11, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int v10, v2, v10

    .line 1247
    .restart local v10    # "childLeft":I
    sub-int v11, v2, v10

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    .line 1250
    .restart local v11    # "newOffset":F
    :goto_1
    iget v12, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_3

    move v12, v1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 1252
    .local v12, "changeOffset":Z
    :goto_2
    iget v13, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1254
    .local v13, "vgrav":I
    const/16 v14, 0x10

    if-eq v13, v14, :cond_5

    const/16 v14, 0x50

    if-eq v13, v14, :cond_4

    .line 1257
    iget v14, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int v15, v10, v8

    iget v1, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v9

    invoke-virtual {v6, v10, v14, v15, v1}, Landroid/view/View;->layout(IIII)V

    .line 1259
    goto :goto_4

    .line 1263
    :cond_4
    sub-int v1, p5, p3

    .line 1264
    .local v1, "height":I
    iget v14, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v14, v1, v14

    .line 1265
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    add-int v15, v10, v8

    iget v5, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v1, v5

    .line 1264
    invoke-virtual {v6, v10, v14, v15, v5}, Landroid/view/View;->layout(IIII)V

    .line 1268
    goto :goto_4

    .line 1272
    .end local v1    # "height":I
    :cond_5
    sub-int v1, p5, p3

    .line 1273
    .restart local v1    # "height":I
    sub-int v5, v1, v9

    div-int/lit8 v5, v5, 0x2

    .line 1277
    .local v5, "childTop":I
    iget v14, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v5, v14, :cond_6

    .line 1278
    iget v5, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 1279
    :cond_6
    add-int v14, v5, v9

    iget v15, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v15, v1, v15

    if-le v14, v15, :cond_7

    .line 1280
    iget v14, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v14, v1, v14

    sub-int v5, v14, v9

    .line 1282
    :cond_7
    :goto_3
    add-int v14, v10, v8

    add-int v15, v5, v9

    invoke-virtual {v6, v10, v5, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1284
    nop

    .line 1288
    .end local v1    # "height":I
    .end local v5    # "childTop":I
    :goto_4
    if-eqz v12, :cond_8

    .line 1289
    invoke-virtual {v0, v6, v11}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1292
    :cond_8
    iget v1, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_9

    const/16 v16, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x4

    move/from16 v16, v5

    :goto_5
    move/from16 v1, v16

    .line 1293
    .local v1, "newVisibility":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_a

    .line 1294
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    .end local v1    # "newVisibility":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v8    # "childWidth":I
    .end local v9    # "childHeight":I
    .end local v10    # "childLeft":I
    .end local v11    # "newOffset":F
    .end local v12    # "changeOffset":Z
    .end local v13    # "vgrav":I
    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1298
    .end local v4    # "i":I
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    .line 1299
    iput-boolean v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1300
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1031
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1032
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1033
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1034
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1036
    .local v4, "heightSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_0

    if-eq v2, v5, :cond_4

    .line 1037
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1042
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_1

    .line 1043
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    .line 1044
    :cond_1
    if-nez v1, :cond_2

    .line 1045
    const/high16 v1, 0x40000000    # 2.0f

    .line 1046
    const/16 v3, 0x12c

    .line 1048
    :cond_2
    :goto_0
    if-ne v2, v6, :cond_3

    .line 1049
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    .line 1050
    :cond_3
    if-nez v2, :cond_4

    .line 1051
    const/high16 v2, 0x40000000    # 2.0f

    .line 1052
    const/16 v4, 0x12c

    .line 1060
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1062
    iget-object v6, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 1063
    .local v6, "applyInsets":Z
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    .line 1067
    .local v9, "layoutDirection":I
    const/4 v10, 0x0

    .line 1068
    .local v10, "hasDrawerOnLeftEdge":Z
    const/4 v11, 0x0

    .line 1069
    .local v11, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v12

    .line 1070
    .local v12, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v12, :cond_17

    .line 1071
    invoke-virtual {v0, v13}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1073
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v7, 0x8

    if-ne v15, v7, :cond_6

    .line 1074
    move/from16 v17, v1

    move/from16 v18, v2

    move v2, v5

    move/from16 v19, v6

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1077
    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1079
    .local v7, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    if-eqz v6, :cond_e

    .line 1080
    iget v5, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v5, v9}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    .line 1081
    .local v5, "cgrav":I
    invoke-static {v14}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v16

    const/16 v8, 0x15

    if-eqz v16, :cond_a

    .line 1082
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v8, :cond_9

    .line 1083
    iget-object v8, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v8, Landroid/view/WindowInsets;

    .line 1084
    .local v8, "wi":Landroid/view/WindowInsets;
    const/4 v15, 0x3

    if-ne v5, v15, :cond_7

    .line 1085
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v15

    .line 1086
    move/from16 v17, v1

    .end local v1    # "widthMode":I
    .local v17, "widthMode":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1087
    move/from16 v18, v2

    .end local v2    # "heightMode":I
    .local v18, "heightMode":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 1085
    move/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "applyInsets":Z
    .local v19, "applyInsets":Z
    invoke-virtual {v8, v15, v1, v6, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v8

    goto :goto_4

    .line 1088
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_7
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    const/4 v6, 0x0

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    const/4 v1, 0x5

    if-ne v5, v1, :cond_8

    .line 1089
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1090
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1091
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1089
    invoke-virtual {v8, v6, v1, v2, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v8

    .line 1093
    :cond_8
    :goto_4
    invoke-virtual {v14, v8}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1094
    .end local v8    # "wi":Landroid/view/WindowInsets;
    const/4 v15, 0x0

    goto :goto_6

    .line 1082
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_9
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    const/4 v15, 0x0

    goto :goto_6

    .line 1096
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_a
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_d

    .line 1097
    iget-object v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    .line 1098
    .local v1, "wi":Landroid/view/WindowInsets;
    const/4 v2, 0x3

    if-ne v5, v2, :cond_b

    .line 1099
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1100
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 1101
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 1099
    const/4 v15, 0x0

    invoke-virtual {v1, v2, v6, v15, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_5

    .line 1102
    :cond_b
    const/4 v15, 0x0

    const/4 v2, 0x5

    if-ne v5, v2, :cond_c

    .line 1103
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1104
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    .line 1105
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 1103
    invoke-virtual {v1, v15, v2, v6, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1107
    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1108
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1109
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1110
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    .line 1096
    .end local v1    # "wi":Landroid/view/WindowInsets;
    :cond_d
    const/4 v15, 0x0

    goto :goto_6

    .line 1079
    .end local v5    # "cgrav":I
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_e
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    const/4 v15, 0x0

    .line 1115
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    :goto_6
    invoke-virtual {v0, v14}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1117
    iget v1, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v1, v3, v1

    iget v2, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1119
    .local v1, "contentWidthSpec":I
    iget v5, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v5, v4, v5

    iget v6, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1121
    .local v5, "contentHeightSpec":I
    invoke-virtual {v14, v1, v5}, Landroid/view/View;->measure(II)V

    .line 1122
    .end local v1    # "contentWidthSpec":I
    .end local v5    # "contentHeightSpec":I
    nop

    .line 1070
    .end local v7    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :goto_7
    move/from16 v2, p1

    move/from16 v0, p2

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    goto/16 :goto_b

    .line 1122
    .restart local v7    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .restart local v14    # "child":Landroid/view/View;
    :cond_f
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v14}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1123
    sget-boolean v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_10

    .line 1124
    invoke-static {v14}, Lcom/oneplus/support/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    iget v5, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_10

    .line 1125
    invoke-static {v14, v5}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1128
    :cond_10
    nop

    .line 1129
    invoke-virtual {v0, v14}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 1132
    .local v1, "childGravity":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    move v5, v15

    .line 1133
    .local v5, "isLeftEdgeDrawer":Z
    :goto_8
    if-eqz v5, :cond_12

    if-nez v10, :cond_13

    :cond_12
    if-nez v5, :cond_14

    if-nez v11, :cond_13

    goto :goto_9

    .line 1135
    :cond_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Child drawer has absolute gravity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-static {v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " but this "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "DrawerLayout"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " already has a drawer view along that edge"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1139
    :cond_14
    :goto_9
    if-eqz v5, :cond_15

    .line 1140
    const/4 v10, 0x1

    goto :goto_a

    .line 1142
    :cond_15
    const/4 v11, 0x1

    .line 1144
    :goto_a
    iget v6, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v8, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    iget v8, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    iget v8, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v2, p1

    invoke-static {v2, v6, v8}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1147
    .local v6, "drawerWidthSpec":I
    iget v8, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v15, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v15

    iget v15, v7, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v8, v15}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v8

    .line 1150
    .local v8, "drawerHeightSpec":I
    invoke-virtual {v14, v6, v8}, Landroid/view/View;->measure(II)V

    .line 1151
    .end local v1    # "childGravity":I
    .end local v5    # "isLeftEdgeDrawer":Z
    .end local v6    # "drawerWidthSpec":I
    .end local v8    # "drawerHeightSpec":I
    nop

    .line 1070
    .end local v7    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v6, v19

    const/high16 v5, 0x40000000    # 2.0f

    goto/16 :goto_3

    .line 1152
    .restart local v7    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .restart local v14    # "child":Landroid/view/View;
    :cond_16
    move/from16 v2, p1

    move/from16 v0, p2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1157
    .end local v7    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v13    # "i":I
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .local v6, "applyInsets":Z
    :cond_17
    return-void

    .line 1055
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .end local v10    # "hasDrawerOnLeftEdge":Z
    .end local v11    # "hasDrawerOnRightEdge":Z
    .end local v12    # "childCount":I
    :cond_18
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1999
    instance-of v0, p1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 2000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2001
    return-void

    .line 2004
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    .line 2005
    .local v0, "ss":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2007
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v1, :cond_1

    .line 2008
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2009
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2010
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 2014
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_1
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 2015
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2017
    :cond_2
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v1, v2, :cond_3

    .line 2018
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2020
    :cond_3
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v1, v2, :cond_4

    .line 2021
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2023
    :cond_4
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v1, v2, :cond_5

    .line 2024
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v2, 0x800005

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2026
    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 1380
    invoke-direct {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1381
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 2030
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2031
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2033
    .local v1, "ss":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 2034
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 2035
    invoke-virtual {p0, v3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2036
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 2038
    .local v5, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v6, v5, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    move v6, v7

    .line 2040
    .local v6, "isOpenedAndNotClosing":Z
    :goto_1
    iget v9, v5, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    move v7, v8

    .line 2041
    .local v7, "isClosedAndOpening":Z
    :cond_1
    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    .line 2034
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v6    # "isOpenedAndNotClosing":Z
    .end local v7    # "isClosedAndOpening":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2044
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .restart local v6    # "isOpenedAndNotClosing":Z
    .restart local v7    # "isClosedAndOpening":Z
    :cond_3
    :goto_2
    iget v8, v5, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v8, v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2049
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v6    # "isOpenedAndNotClosing":Z
    .end local v7    # "isClosedAndOpening":Z
    :cond_4
    iget v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    iput v3, v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2050
    iget v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    iput v3, v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2051
    iget v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    iput v3, v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2052
    iget v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    iput v3, v1, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 2054
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1571
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1572
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1575
    .local v0, "action":I
    const/4 v1, 0x1

    .line 1577
    .local v1, "wantTouchEvents":Z
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    goto :goto_1

    .line 1611
    :cond_0
    invoke-virtual {p0, v4}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1612
    iput-boolean v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1613
    iput-boolean v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_1

    .line 1589
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1590
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1591
    .local v5, "y":F
    const/4 v6, 0x1

    .line 1592
    .local v6, "peekingOnly":Z
    iget-object v7, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    float-to-int v8, v2

    float-to-int v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1593
    .local v7, "touchedView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {p0, v7}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1594
    iget v8, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v8, v2, v8

    .line 1595
    .local v8, "dx":F
    iget v9, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v9, v5, v9

    .line 1596
    .local v9, "dy":F
    iget-object v10, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/util/ViewDragHelper;->getTouchSlop()I

    move-result v10

    .line 1597
    .local v10, "slop":I
    mul-float v11, v8, v8

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    mul-int v12, v10, v10

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 1599
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v11

    .line 1600
    .local v11, "openDrawer":Landroid/view/View;
    if-eqz v11, :cond_3

    .line 1601
    invoke-virtual {p0, v11}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    move v6, v4

    .line 1605
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "slop":I
    .end local v11    # "openDrawer":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1606
    iput-boolean v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1607
    goto :goto_1

    .line 1579
    .end local v2    # "x":F
    .end local v5    # "y":F
    .end local v6    # "peekingOnly":Z
    .end local v7    # "touchedView":Landroid/view/View;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1580
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1581
    .local v4, "y":F
    iput v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    .line 1582
    iput v4, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    .line 1583
    iput-boolean v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1584
    iput-boolean v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1585
    nop

    .line 1618
    .end local v2    # "x":F
    .end local v4    # "y":F
    :goto_1
    return v1
.end method

.method public openDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1724
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1725
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 1735
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1736
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1741
    return-void

    .line 1737
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-static {p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1680
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1681
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .line 1690
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1694
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1695
    .local v0, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 1696
    iput v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1697
    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1699
    invoke-direct {p0, p1, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1700
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1701
    iget v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1703
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1706
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1707
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1706
    invoke-virtual {v1, p1, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1710
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1711
    iget v2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1712
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1715
    return-void

    .line 1691
    .end local v0    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDrawerListener(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 530
    if-nez p1, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 535
    return-void

    .line 537
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 1627
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1629
    iput-boolean p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1630
    if-eqz p1, :cond_0

    .line 1631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1633
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1304
    iget-boolean v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1305
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1307
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 407
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 408
    iput-boolean p2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 409
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->requestLayout()V

    .line 411
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .line 378
    iput p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 380
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 381
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 379
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setDrawerListener(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListener:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 498
    :cond_0
    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->addDrawerListener(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 503
    :cond_1
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListener:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;

    .line 504
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .line 554
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 555
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 556
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 3
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .line 578
    nop

    .line 579
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 578
    invoke-static {p2, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 581
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iput p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 589
    :cond_1
    iput p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 590
    goto :goto_0

    .line 586
    :cond_2
    iput p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 587
    goto :goto_0

    .line 583
    :cond_3
    iput p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 584
    nop

    .line 596
    :goto_0
    if-eqz p1, :cond_5

    .line 598
    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    .line 599
    .local v1, "helper":Lcom/oneplus/lib/util/ViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 601
    .end local v1    # "helper":Lcom/oneplus/lib/util/ViewDragHelper;
    :cond_5
    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    goto :goto_2

    .line 603
    :cond_6
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 604
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 605
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 609
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_7
    invoke-virtual {p0, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 610
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 611
    invoke-virtual {p0, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 616
    .end local v1    # "toClose":Landroid/view/View;
    :cond_8
    :goto_2
    return-void
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 3
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 637
    invoke-virtual {p0, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 642
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 643
    return-void

    .line 638
    .end local v0    # "gravity":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .line 467
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 468
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .line 433
    sget-boolean v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    .line 438
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 439
    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    .line 440
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 441
    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 442
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 443
    :cond_3
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 444
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 448
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 449
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 450
    return-void

    .line 446
    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 729
    nop

    .line 730
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 729
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 731
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 732
    iput-object p2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_0

    .line 733
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 734
    iput-object p2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    .line 736
    :cond_1
    :goto_0
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 930
    .local v0, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 931
    return-void

    .line 934
    :cond_0
    iput p2, v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 935
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 936
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 476
    iput p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 477
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 478
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1362
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1363
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1364
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1341
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1342
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1343
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1374
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1375
    invoke-virtual {p0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1376
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 6
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .line 816
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mLeftDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 817
    .local v0, "leftState":I
    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mRightDragger:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/util/ViewDragHelper;->getViewDragState()I

    move-result v1

    .line 820
    .local v1, "rightState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 822
    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    const/4 v2, 0x0

    .local v2, "state":I
    goto :goto_2

    .line 823
    .end local v2    # "state":I
    :cond_2
    :goto_0
    const/4 v2, 0x2

    .restart local v2    # "state":I
    goto :goto_2

    .line 821
    .end local v2    # "state":I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 828
    .restart local v2    # "state":I
    :goto_2
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    .line 829
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 830
    .local v3, "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v4, v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    .line 831
    invoke-virtual {p0, p3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_3

    .line 832
    :cond_4
    iget v4, v3, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 833
    invoke-virtual {p0, p3}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    .line 837
    .end local v3    # "lp":Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_5
    :goto_3
    iget v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    if-eq v2, v3, :cond_6

    .line 838
    iput v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    .line 840
    iget-object v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 843
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 844
    .local v3, "listenerCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_6

    .line 845
    iget-object v5, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v5, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 844
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 849
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_6
    return-void
.end method
