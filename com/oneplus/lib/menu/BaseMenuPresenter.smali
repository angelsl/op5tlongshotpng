.class public abstract Lcom/oneplus/lib/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/oneplus/lib/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 63
    iput p2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 64
    iput p3, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 65
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public abstract bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 166
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 182
    instance-of v0, p2, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/oneplus/lib/menu/MenuView$ItemView;

    .local v0, "itemView":Lcom/oneplus/lib/menu/MenuView$ItemView;
    goto :goto_0

    .line 185
    .end local v0    # "itemView":Lcom/oneplus/lib/menu/MenuView$ItemView;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView$ItemView;

    move-result-object v0

    .line 187
    .restart local v0    # "itemView":Lcom/oneplus/lib/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V

    .line 188
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    .line 78
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/MenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 69
    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 72
    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 153
    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 154
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 246
    iput p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mId:I

    .line 247
    return-void
.end method

.method public shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .line 90
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "childIndex":I
    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v2, :cond_5

    .line 95
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->flagActionItems()V

    .line 96
    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 97
    .local v2, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 98
    .local v3, "itemCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 99
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 100
    .local v5, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {p0, v1, v5}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 102
    .local v6, "convertView":Landroid/view/View;
    instance-of v7, v6, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v7, :cond_1

    .line 103
    move-object v7, v6

    check-cast v7, Lcom/oneplus/lib/menu/MenuView$ItemView;

    invoke-interface {v7}, Lcom/oneplus/lib/menu/MenuView$ItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 104
    .local v7, "oldItem":Lcom/oneplus/lib/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v5, v6, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 105
    .local v8, "itemView":Landroid/view/View;
    if-eq v5, v7, :cond_2

    .line 107
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 108
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 110
    :cond_2
    if-eq v8, v6, :cond_3

    .line 111
    invoke-virtual {p0, v8, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 113
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 98
    .end local v5    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v6    # "convertView":Landroid/view/View;
    .end local v7    # "oldItem":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v8    # "itemView":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v3    # "itemCount":I
    .end local v4    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_6
    return-void
.end method
