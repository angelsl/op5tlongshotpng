.class public Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;
.super Lcom/oneplus/lib/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 113
    .local v1, "config":Landroid/content/res/Configuration;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v4, 0x16

    const/16 v5, 0x11

    if-lt v2, v5, :cond_0

    const/4 v2, 0x1

    .line 114
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 115
    iput v3, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 116
    iput v4, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0

    .line 118
    :cond_0
    iput v4, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 119
    iput v3, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 121
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .line 128
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 129
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 160
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 162
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 163
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/oneplus/lib/menu/MenuAdapter;

    .line 164
    .local v1, "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    goto :goto_0

    .line 165
    .end local v1    # "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    .end local v2    # "headersCount":I
    :cond_0
    const/4 v2, 0x0

    .line 166
    .restart local v2    # "headersCount":I
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/menu/MenuAdapter;

    .line 170
    .restart local v1    # "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    :goto_0
    const/4 v3, 0x0

    .line 171
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v4

    .line 173
    .local v4, "position":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 174
    sub-int v5, v4, v2

    .line 175
    .local v5, "itemPosition":I
    if-ltz v5, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 176
    invoke-virtual {v1, v5}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v3

    .line 181
    .end local v4    # "position":I
    .end local v5    # "itemPosition":I
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 182
    .local v4, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v4, v3, :cond_3

    .line 183
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuAdapter;->getAdapterMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v5

    .line 184
    .local v5, "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    if-eqz v4, :cond_2

    .line 185
    iget-object v6, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-interface {v6, v5, v4}, Lcom/oneplus/lib/menu/MenuItemHoverListener;->onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 188
    :cond_2
    iput-object v3, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 190
    if-eqz v3, :cond_3

    .line 191
    iget-object v6, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-interface {v6, v5, v3}, Lcom/oneplus/lib/menu/MenuItemHoverListener;->onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 196
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    .end local v2    # "headersCount":I
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    .end local v4    # "oldMenuItem":Landroid/view/MenuItem;
    .end local v5    # "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    :cond_3
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/ListMenuItemView;

    .line 134
    .local v0, "selectedItem":Lcom/oneplus/lib/menu/ListMenuItemView;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    nop

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v2

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v3

    .line 136
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 141
    :cond_0
    return v1

    .line 142
    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v2, :cond_2

    .line 143
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuAdapter;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuAdapter;->getAdapterMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 147
    return v1

    .line 149
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Lcom/oneplus/lib/menu/MenuItemHoverListener;

    .line 124
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    .line 125
    return-void
.end method
