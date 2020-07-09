.class public Lcom/oneplus/lib/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 80
    iput p2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mThemeRes:I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;-><init>(II)V

    .line 69
    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/oneplus/lib/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 102
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/oneplus/lib/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 85
    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 89
    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 95
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 98
    :cond_2
    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 170
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    .line 171
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 225
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 220
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 140
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    new-instance v0, Lcom/oneplus/lib/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/menu/MenuDialogHelper;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    .line 147
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .line 197
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 198
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 201
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 190
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 193
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 194
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 135
    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 136
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 204
    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mId:I

    .line 205
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 162
    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 163
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 131
    :cond_0
    return-void
.end method
