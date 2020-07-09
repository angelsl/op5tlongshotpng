.class abstract Lcom/oneplus/lib/menu/BaseMenuWrapper;
.super Lcom/oneplus/lib/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/lib/menu/BaseWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oneplus/lib/menu/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oneplus/lib/menu/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/oneplus/lib/menu/BaseMenuWrapper;, "Lcom/oneplus/lib/menu/BaseMenuWrapper<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Lcom/oneplus/lib/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 44
    .local p0, "this":Lcom/oneplus/lib/menu/BaseMenuWrapper;, "Lcom/oneplus/lib/menu/BaseMenuWrapper<TT;>;"
    instance-of v0, p1, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz v0, :cond_2

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 48
    .local v0, "supportMenuItem":Lcom/oneplus/lib/menu/SupportMenuItem;
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 55
    .local v1, "wrappedItem":Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    return-object v1

    .line 63
    .end local v0    # "supportMenuItem":Lcom/oneplus/lib/menu/SupportMenuItem;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_2
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 67
    .local p0, "this":Lcom/oneplus/lib/menu/BaseMenuWrapper;, "Lcom/oneplus/lib/menu/BaseMenuWrapper<TT;>;"
    instance-of v0, p1, Lcom/oneplus/lib/menu/SupportSubMenu;

    if-eqz v0, :cond_2

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/SupportSubMenu;

    .line 71
    .local v0, "supportSubMenu":Lcom/oneplus/lib/menu/SupportSubMenu;
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    .line 77
    .local v1, "wrappedMenu":Landroid/view/SubMenu;
    if-nez v1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportSubMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportSubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    return-object v1

    .line 83
    .end local v0    # "supportSubMenu":Lcom/oneplus/lib/menu/SupportSubMenu;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_2
    return-object p1
.end method

.method final internalClear()V
    .locals 1

    .line 88
    .local p0, "this":Lcom/oneplus/lib/menu/BaseMenuWrapper;, "Lcom/oneplus/lib/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 94
    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 3
    .param p1, "groupId"    # I

    .line 97
    .local p0, "this":Lcom/oneplus/lib/menu/BaseMenuWrapper;, "Lcom/oneplus/lib/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/lib/menu/SupportMenuItem;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 106
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 110
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method final internalRemoveItem(I)V
    .locals 3
    .param p1, "id"    # I

    .line 113
    .local p0, "this":Lcom/oneplus/lib/menu/BaseMenuWrapper;, "Lcom/oneplus/lib/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 120
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/lib/menu/SupportMenuItem;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 122
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 127
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method
