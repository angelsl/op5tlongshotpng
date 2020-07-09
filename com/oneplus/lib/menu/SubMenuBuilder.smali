.class public Lcom/oneplus/lib/menu/SubMenuBuilder;
.super Lcom/oneplus/lib/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p3, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 23
    iput-object p3, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 24
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 67
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 67
    :goto_1
    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 122
    const/4 v1, 0x0

    return-object v1

    .line 124
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 57
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 58
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 90
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .line 100
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 95
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 105
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 80
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 74
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 29
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .line 38
    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 39
    return-void
.end method
