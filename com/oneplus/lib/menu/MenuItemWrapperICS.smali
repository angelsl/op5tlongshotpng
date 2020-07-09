.class public Lcom/oneplus/lib/menu/MenuItemWrapperICS;
.super Lcom/oneplus/lib/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/menu/BaseMenuWrapper<",
        "Lcom/oneplus/lib/menu/SupportMenuItem;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MenuItemWrapper"


# instance fields
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenuItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method createActionProviderWrapper(Landroid/view/ActionProvider;)Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .line 388
    new-instance v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object v0

    .line 303
    .local v0, "provider":Lcom/oneplus/lib/widget/ActionProvider;
    instance-of v1, v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    if-eqz v1, :cond_0

    .line 304
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v1, v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    return-object v1

    .line 306
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v1, :cond_0

    .line 288
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 290
    :cond_0
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 296
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->createActionProviderWrapper(Landroid/view/ActionProvider;)Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 295
    :goto_0
    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 297
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3
    .param p1, "resId"    # I

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/lib/menu/SupportMenuItem;

    new-instance v2, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Lcom/oneplus/lib/menu/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 281
    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 264
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 268
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .line 166
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 167
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 173
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .line 188
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 189
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 200
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 333
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 334
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "enabled"    # Z

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 221
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 6
    .param p1, "checkable"    # Z

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setExclusiveCheckable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 379
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuItemWrapper"

    const-string v2, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 110
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 104
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 356
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 366
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 367
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 121
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 145
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 151
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 326
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz p1, :cond_0

    .line 327
    new-instance v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 326
    :goto_0
    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 328
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz p1, :cond_0

    .line 242
    new-instance v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 241
    :goto_0
    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 243
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 132
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 138
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    .line 139
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1
    .param p1, "actionEnum"    # I

    .line 253
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShowAsAction(I)V

    .line 254
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionEnum"    # I

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 259
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 82
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 76
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 93
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 344
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 345
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "visible"    # Z

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
