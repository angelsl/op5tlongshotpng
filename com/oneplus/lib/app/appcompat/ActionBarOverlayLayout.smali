.class public Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;
.implements Lcom/oneplus/support/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 69
    const/16 v0, 0x258

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 75
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 90
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 120
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 122
    new-instance v0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    .line 123
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 578
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 579
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 242
    .local v1, "lp":Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 244
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 246
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 247
    const/4 v0, 0x1

    .line 248
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 250
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 251
    const/4 v0, 0x1

    .line 252
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 254
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 255
    const/4 v0, 0x1

    .line 256
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 258
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 518
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 519
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-object v0

    .line 520
    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_1

    .line 521
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 523
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 128
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 135
    invoke-static {p1}, Lcom/oneplus/support/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Lcom/oneplus/support/core/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    .line 136
    return-void
.end method

.method private postAddActionBarHideOffset()V
    .locals 3

    .line 567
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 568
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 569
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 3

    .line 562
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 563
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 573
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 574
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 582
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/support/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 583
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    .line 584
    .local v0, "finalY":I
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 659
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 307
    instance-of v0, p1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 713
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->dismissPopupMenus()V

    .line 714
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 425
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 426
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 429
    :cond_0
    move v0, v1

    :goto_0
    nop

    .line 430
    .local v0, "top":I
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 431
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 430
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    .end local v0    # "top":I
    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 265
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    .line 266
    .local v0, "vis":I
    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "stable":Z
    :goto_0
    move-object v10, p1

    .line 270
    .local v10, "systemInsets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v3

    .line 272
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v4, v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 274
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    const/4 v3, 0x1

    .line 276
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    :cond_1
    if-eqz v3, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->requestLayout()V

    .line 287
    :cond_2
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .line 292
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 302
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 297
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 602
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 555
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 556
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 559
    :cond_0
    return-void
.end method

.method public hasIcon()Z
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 629
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 635
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 683
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .line 607
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 608
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->initIndeterminateProgress()V

    .line 614
    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->initProgress()V

    .line 611
    nop

    .line 619
    :goto_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 671
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 665
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 200
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 202
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 142
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 399
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getChildCount()I

    move-result v0

    .line 401
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    .line 402
    .local v1, "parentLeft":I
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 404
    .local v2, "parentRight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    .line 405
    .local v3, "parentTop":I
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 407
    .local v4, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 408
    move-object v6, p0

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 409
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 410
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 412
    .local v8, "lp":Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 413
    .local v9, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 415
    .local v10, "height":I
    iget v11, v8, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v1

    .line 416
    .local v11, "childLeft":I
    iget v12, v8, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v3

    .line 418
    .local v12, "childTop":I
    add-int v13, v11, v9

    add-int v14, v12, v10

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 407
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "childLeft":I
    .end local v12    # "childTop":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, p0

    .line 421
    .end local v5    # "i":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 312
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 314
    const/4 v6, 0x0

    .line 315
    .local v6, "maxHeight":I
    const/4 v8, 0x0

    .line 316
    .local v8, "maxWidth":I
    const/4 v9, 0x0

    .line 318
    .local v9, "childState":I
    const/4 v10, 0x0

    .line 319
    .local v10, "topInset":I
    const/4 v11, 0x0

    .line 321
    .local v11, "bottomInset":I
    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 322
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 323
    .local v12, "lp":Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 324
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 323
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 325
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 326
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 325
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 327
    .end local v6    # "maxHeight":I
    .local v13, "maxHeight":I
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 328
    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 327
    invoke-static {v9, v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 330
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v14

    .line 331
    .local v14, "vis":I
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    .line 333
    .local v15, "stable":Z
    if-eqz v15, :cond_2

    .line 336
    iget v10, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 337
    iget-boolean v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "tabs":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 341
    iget v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v10, v1

    .line 343
    .end local v0    # "tabs":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 347
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 354
    :cond_3
    :goto_1
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 356
    iget-boolean v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_4

    if-nez v15, :cond_4

    .line 357
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 358
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 360
    :cond_4
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 361
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 363
    :goto_2
    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v2, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 365
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 369
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 371
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 374
    :cond_5
    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 375
    iget-object v0, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 376
    .end local v12    # "lp":Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .local v0, "lp":Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    iget-object v1, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 377
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 376
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 378
    .end local v8    # "maxWidth":I
    .local v1, "maxWidth":I
    iget-object v2, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 379
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 378
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 380
    .end local v13    # "maxHeight":I
    .local v2, "maxHeight":I
    iget-object v3, v7, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 381
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 380
    invoke-static {v9, v3}, Lcom/oneplus/lib/widget/util/ViewUtils;->combineMeasuredStates(II)I

    move-result v3

    .line 384
    .end local v9    # "childState":I
    .local v3, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 391
    nop

    .line 392
    move/from16 v4, p1

    invoke-static {v1, v4, v3}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v3, 0x10

    .line 393
    move/from16 v8, p2

    invoke-static {v2, v8, v6}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    .line 391
    invoke-virtual {v7, v5, v6}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 395
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 482
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 485
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    .line 490
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 491
    return v0

    .line 483
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 497
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 462
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 463
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 464
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 453
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 454
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 457
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 443
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0

    .line 444
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 468
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_1

    .line 469
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_0

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    .line 475
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_2

    .line 476
    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 478
    :cond_2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6
    .param p1, "visible"    # I

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 210
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    .line 211
    .local v0, "diff":I
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 212
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 213
    .local v1, "barVisible":Z
    :goto_0
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 214
    .local v4, "stable":Z
    :goto_1
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_6

    .line 218
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 219
    if-nez v1, :cond_5

    if-nez v4, :cond_4

    goto :goto_3

    .line 220
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_4

    .line 219
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 222
    :cond_6
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_7

    .line 223
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_7

    .line 224
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 227
    :cond_7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 231
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 232
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 233
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 236
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 511
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 512
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 513
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 515
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 706
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 707
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 708
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 700
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 701
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 702
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 547
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    .line 549
    .local v0, "topHeight":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 550
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 551
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 145
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 150
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v0, :cond_0

    .line 151
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 152
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 153
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 156
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 176
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .line 529
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 530
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 531
    if-nez p1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 640
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 641
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    .line 642
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 646
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 647
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 648
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 652
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 653
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    .line 654
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 694
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 695
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 696
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 689
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuPrepared()V

    .line 690
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 168
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 197
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .line 624
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 589
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 590
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 591
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 595
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 596
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 597
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 676
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 677
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
