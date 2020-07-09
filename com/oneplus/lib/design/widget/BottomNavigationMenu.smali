.class public final Lcom/oneplus/lib/design/widget/BottomNavigationMenu;
.super Lcom/oneplus/lib/menu/MenuBuilder;
.source "BottomNavigationMenu.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;->stopDispatchingItemsChanged()V

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 52
    .local v0, "item":Landroid/view/MenuItem;
    instance-of v2, v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 53
    move-object v2, v0

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;->startDispatchingItemsChanged()V

    .line 56
    return-object v0

    .line 45
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BottomNavigationView does not support submenus"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
