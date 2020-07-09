.class public Lcom/oneplus/lib/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Lcom/oneplus/lib/menu/SupportMenuItem;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

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

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x1000

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 50
    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconResId:I

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 63
    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTint:Z

    .line 65
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 69
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    .line 78
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 79
    iput p3, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mId:I

    .line 80
    iput p2, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mGroup:I

    .line 81
    iput p4, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mCategoryOrder:I

    .line 82
    iput p5, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mOrdering:I

    .line 83
    iput-object p6, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 84
    return-void
.end method

.method private applyIconTint()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 431
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 435
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 439
    :cond_2
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 88
    iget-char v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 123
    iget-char v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;
    .locals 1

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 302
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    return v1

    .line 306
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 158
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    .line 163
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 173
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuItem;->setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 1
    .param p1, "resId"    # I

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 1
    .param p1, "actionView"    # Landroid/view/View;

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .line 178
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 179
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 184
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 185
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 186
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .line 191
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    .line 192
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checked"    # Z

    .line 202
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    .line 203
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 377
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    .line 378
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .line 208
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    .line 209
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Lcom/oneplus/lib/menu/ActionMenuItem;
    .locals 2
    .param p1, "exclusive"    # Z

    .line 196
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    .line 197
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 223
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconResId:I

    .line 224
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItem;->applyIconTint()V

    .line 227
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 214
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconResId:I

    .line 217
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItem;->applyIconTint()V

    .line 218
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintList"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 399
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTint:Z

    .line 402
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItem;->applyIconTint()V

    .line 404
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 414
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 417
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItem;->applyIconTint()V

    .line 419
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 232
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 233
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C

    .line 238
    iput-char p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 239
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 244
    iput-char p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 245
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 246
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 372
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 251
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 252
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 257
    iput-char p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 258
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 259
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 265
    iput-char p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 266
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 267
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 268
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 269
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "show"    # I

    .line 312
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuItem;->setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .line 351
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 352
    return-object p0
.end method

.method public setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 1
    .param p1, "actionProvider"    # Lcom/oneplus/lib/widget/ActionProvider;

    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 280
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 281
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 274
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 275
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 286
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 287
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 0
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 388
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    .line 389
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "visible"    # Z

    .line 292
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuItem;->mFlags:I

    .line 293
    return-object p0
.end method
