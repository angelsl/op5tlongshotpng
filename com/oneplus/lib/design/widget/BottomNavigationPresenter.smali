.class public Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->id:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 53
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 47
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 49
    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 77
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 112
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    iget v1, v1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 105
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;-><init>()V

    .line 106
    .local v0, "savedState":Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 107
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V
    .locals 0
    .param p1, "menuView"    # Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 42
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 43
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 69
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 95
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->id:I

    .line 96
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0
    .param p1, "updateSuspended"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateSuspended:Z

    .line 119
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 58
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateSuspended:Z

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->updateMenuView()V

    .line 66
    :goto_0
    return-void
.end method
