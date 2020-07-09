.class public final Lcom/oneplus/lib/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lcom/oneplus/lib/menu/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x1000

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 58
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 82
    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 83
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    .line 84
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 85
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 87
    const/16 v1, 0x10

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 95
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    .line 100
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 144
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 145
    iput p3, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    .line 146
    iput p2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mGroup:I

    .line 147
    iput p4, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mCategoryOrder:I

    .line 148
    iput p5, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOrdering:I

    .line 149
    iput-object p6, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 150
    iput p7, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    .line 151
    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 549
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_3

    .line 550
    :cond_0
    invoke-static {p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 553
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 557
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 561
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 564
    :cond_3
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    .line 671
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .line 812
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 813
    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 817
    const/4 v0, 0x1

    return v0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    .line 821
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 825
    :cond_2
    return v1

    .line 822
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 2

    .line 798
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 799
    return v1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    .line 803
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 807
    :cond_1
    return v1

    .line 804
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 744
    return-object v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 747
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    .line 749
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 249
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 483
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 485
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    .line 486
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 490
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 215
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 286
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    :goto_0
    return v0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    .line 359
    .local v0, "shortcut":C
    if-nez v0, :cond_0

    .line 360
    const-string v1, ""

    return-object v1

    .line 363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    :cond_1
    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    goto :goto_0

    .line 367
    :cond_2
    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    goto :goto_0

    .line 371
    :cond_3
    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    nop

    .line 383
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 452
    .local v0, "ctitle":Ljava/lang/CharSequence;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 456
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 459
    :cond_1
    return-object v0
.end method

.method getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/oneplus/lib/menu/MenuView$ItemView;

    .line 425
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/lib/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .line 829
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 835
    :cond_2
    return v1
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invoke()Z
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    return v1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    return v1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    return v1

    .line 186
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isActionButton()Z
    .locals 2

    .line 681
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 569
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    .line 593
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 191
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .line 588
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 622
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public requestsActionButton()Z
    .locals 2

    .line 685
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requiresActionButton()Z
    .locals 2

    .line 689
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .line 756
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 4
    .param p1, "resId"    # I

    .line 735
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 736
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 737
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 738
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 724
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    .line 726
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 727
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    .line 730
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .line 839
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 840
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 841
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .line 254
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 255
    return-object p0

    .line 258
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 262
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 267
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_0

    .line 269
    return-object p0

    .line 272
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 273
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 276
    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 243
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 244
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 3
    .param p1, "checkable"    # Z

    .line 574
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 575
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    or-int/2addr v1, p1

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 576
    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 580
    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .line 598
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 606
    :goto_0
    return-object p0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .line 610
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 611
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 612
    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 615
    :cond_1
    return-void
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 856
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 858
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 860
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 199
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 204
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .line 584
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 585
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 506
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 510
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 512
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    .line 496
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 498
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 500
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconTintList"    # Landroid/content/res/ColorStateList;

    .line 518
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    .line 520
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 522
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 524
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 534
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 536
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 538
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 540
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 234
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 235
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .line 693
    if-eqz p1, :cond_0

    .line 694
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 696
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 698
    :goto_0
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 661
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 662
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .line 296
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 297
    return-object p0

    .line 300
    :cond_0
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 304
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 309
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_0

    .line 310
    return-object p0

    .line 313
    :cond_0
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 314
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 318
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 850
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 851
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 651
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 652
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 323
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 324
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 326
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 328
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 334
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 335
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 336
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 337
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 339
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 341
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .line 706
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_1
    :goto_0
    nop

    .line 718
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    .line 719
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    .line 720
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .line 792
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 793
    return-object p0
.end method

.method public setSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 407
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 410
    return-void
.end method

.method public setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2
    .param p1, "actionProvider"    # Lcom/oneplus/lib/widget/ActionProvider;

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 777
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    .line 778
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 779
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_0

    .line 780
    new-instance v1, Lcom/oneplus/lib/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/menu/MenuItemImpl$1;-><init>(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ActionProvider;->setVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;)V

    .line 787
    :cond_0
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 445
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 432
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 434
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 440
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 465
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 468
    if-nez p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 474
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 870
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 872
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 874
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .line 644
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemVisibleChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    .line 646
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .line 634
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 635
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 636
    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public shouldShowIcon()Z
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .line 701
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
