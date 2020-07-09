.class public Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;
.super Landroid/widget/LinearLayout;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView;
.implements Lcom/oneplus/lib/design/widget/Badge;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L

.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I
    .annotation build Lcom/oneplus/support/annotation/Dimension;
    .end annotation
.end field

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Lcom/oneplus/support/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/core/util/Pools$Pool<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation
.end field

.field private itemTextAppearanceInactive:I
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation
.end field

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 52
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lcom/oneplus/support/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 68
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 92
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 94
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 96
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 98
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    .line 99
    const v3, 0x1010038

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 101
    new-instance v3, Landroid/transition/AutoTransition;

    invoke-direct {v3}, Landroid/transition/AutoTransition;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    .line 102
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    const-wide/16 v3, 0x73

    invoke-virtual {v0, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 104
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    new-instance v3, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    new-instance v3, Lcom/oneplus/lib/design/widget/TextScale;

    invoke-direct {v3}, Lcom/oneplus/lib/design/widget/TextScale;-><init>()V

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 107
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method private createLayoutParamsForItems()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 531
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 533
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 534
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 535
    return-object v0
.end method

.method private getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    invoke-interface {v0}, Lcom/oneplus/support/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 576
    .local v0, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    if-nez v0, :cond_0

    .line 577
    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 579
    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 3
    .param p1, "labelVisibilityMode"    # I
    .param p2, "childCount"    # I

    .line 587
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 588
    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 589
    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 587
    :goto_0
    return v0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    .line 485
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->removeAllViews()V

    .line 486
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 487
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 488
    .local v4, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    if-eqz v4, :cond_0

    .line 489
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    invoke-interface {v5, v4}, Lcom/oneplus/support/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 487
    .end local v4    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 494
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 495
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 497
    return-void

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 500
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v0

    .line 501
    .local v0, "shifting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 502
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 503
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 504
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 505
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    move-result-object v3

    .line 506
    .local v3, "child":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aput-object v3, v4, v2

    .line 507
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 508
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    .line 510
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 511
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 512
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 513
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 514
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 515
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 517
    :cond_3
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    .line 519
    :goto_2
    invoke-virtual {v3, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    .line 520
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 521
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 522
    invoke-virtual {v3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemPosition(I)V

    .line 523
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createLayoutParamsForItems()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .end local v3    # "child":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    .end local v2    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 527
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 528
    return-void
.end method

.method public cancelAllNotification()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 632
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 633
    .local v3, "itemView":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->unbindNotification()V

    .line 632
    .end local v3    # "itemView":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method

.method public cancelNotification(I)V
    .locals 6
    .param p1, "id"    # I

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 620
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 621
    .local v3, "itemView":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v4

    .line 622
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 623
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->unbindNotification()V

    .line 620
    .end local v3    # "itemView":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_1
    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "baseColorThemeAttr"    # I

    .line 461
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 462
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 463
    return-object v3

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 466
    .local v1, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 467
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorPrimary:I

    .line 468
    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    return-object v3

    .line 471
    :cond_1
    iget v3, v0, Landroid/util/TypedValue;->data:I

    .line 472
    .local v3, "colorPrimary":I
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 473
    .local v4, "defaultColor":I
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v7, v6, [[I

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v8, v7, v2

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [I

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 476
    invoke-virtual {v1, v8, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v9

    aput v3, v6, v2

    aput v4, v6, v10

    invoke-direct {v5, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 473
    return-object v5
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 405
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Dimension;
    .end annotation

    .line 272
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation

    .line 353
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation

    .line 324
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 123
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 124
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 235
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 237
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 238
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 237
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 387
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 389
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 390
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 389
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4
    .param p1, "background"    # I

    .line 362
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 363
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 364
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 365
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    .line 364
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 446
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 447
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4
    .param p1, "iconSize"    # I
        .annotation build Lcom/oneplus/support/annotation/Dimension;
        .end annotation
    .end param

    .line 261
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 263
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 264
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    .line 263
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5
    .param p1, "textAppearanceRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 333
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 335
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 336
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 339
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 340
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 335
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5
    .param p1, "textAppearanceRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 304
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 306
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 307
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 310
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 311
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 306
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 281
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 282
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 283
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 284
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 283
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0
    .param p1, "labelVisibilityMode"    # I

    .line 425
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 426
    return-void
.end method

.method public setNotification(ILcom/oneplus/lib/design/widget/BottomNavigationNotification;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "notification"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    .line 607
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 608
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 609
    .local v3, "itemView":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v4

    .line 610
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 611
    invoke-virtual {v3, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->bindNotification(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;)V

    .line 608
    .end local v3    # "itemView":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    .line 481
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    .line 482
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I

    .line 593
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 594
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 595
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 596
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 597
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 598
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 599
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 600
    goto :goto_1

    .line 594
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 7

    .line 539
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 543
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 544
    .local v0, "menuSize":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buildMenuView()V

    .line 547
    return-void

    .line 550
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 552
    .local v1, "previousSelectedId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 553
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 554
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 556
    iput v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 552
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    if-eq v1, v2, :cond_4

    .line 561
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 564
    :cond_4
    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v2

    .line 565
    .local v2, "shifting":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 566
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 567
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 568
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    .line 569
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/MenuItemImpl;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 570
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 565
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 572
    .end local v3    # "i":I
    :cond_5
    return-void

    .line 540
    .end local v0    # "menuSize":I
    .end local v1    # "previousSelectedId":I
    .end local v2    # "shifting":Z
    :cond_6
    :goto_2
    return-void
.end method
