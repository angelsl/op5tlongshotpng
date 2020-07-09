.class public Lcom/oneplus/lib/menu/CascadingMenuPopup;
.super Lcom/oneplus/lib/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Lcom/oneplus/lib/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "popupStyleAttr"    # I
    .param p4, "popupStyleRes"    # I
    .param p5, "overflowOnly"    # Z

    .line 191
    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopup;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 89
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 107
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 168
    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 192
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 194
    iput p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 195
    iput p4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 196
    iput-boolean p5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 198
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 199
    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->op_abc_config_prefDialogWidth:I

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 205
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/menu/CascadingMenuPopup;

    .line 36
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/menu/CascadingMenuPopup;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver;

    .line 36
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/menu/CascadingMenuPopup;

    .line 36
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createPopupWindow()Lcom/oneplus/lib/menu/MenuPopupWindow;
    .locals 5

    .line 214
    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    .local v0, "popupWindow":Lcom/oneplus/lib/menu/MenuPopupWindow;
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V

    .line 217
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 219
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 220
    iget v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setDropDownGravity(I)V

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setModal(Z)V

    .line 222
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setInputMethodMode(I)V

    .line 223
    return-object v0
.end method

.method private findIndexOfAddedMenu(Lcom/oneplus/lib/menu/MenuBuilder;)I
    .locals 4
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 615
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 616
    .local v2, "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 617
    return v0

    .line 614
    .end local v2    # "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findMenuItemForSubmenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1, "parent"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "submenu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 477
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 478
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 479
    return-object v2

    .line 476
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findParentViewForSubmenu(Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/View;
    .locals 10
    .param p1, "parentInfo"    # Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    .param p2, "submenu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 496
    iget-object v0, p1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v0

    .line 497
    .local v0, "owner":Landroid/view/MenuItem;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 499
    return-object v1

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 506
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 507
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_1

    .line 508
    move-object v4, v3

    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    .line 509
    .local v4, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v5

    .line 510
    .local v5, "headersCount":I
    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/oneplus/lib/menu/MenuAdapter;

    .line 511
    .local v4, "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    goto :goto_0

    .line 512
    .end local v4    # "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    .end local v5    # "headersCount":I
    :cond_1
    const/4 v5, 0x0

    .line 513
    .restart local v5    # "headersCount":I
    move-object v4, v3

    check-cast v4, Lcom/oneplus/lib/menu/MenuAdapter;

    .line 517
    .restart local v4    # "menuAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    :goto_0
    const/4 v6, -0x1

    .line 518
    .local v6, "ownerPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuAdapter;->getCount()I

    move-result v8

    .local v8, "count":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 519
    invoke-virtual {v4, v7}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v9

    if-ne v0, v9, :cond_2

    .line 520
    move v6, v7

    .line 521
    goto :goto_2

    .line 518
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 524
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 526
    return-object v1

    .line 530
    :cond_4
    add-int/2addr v6, v5

    .line 533
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v6, v7

    .line 534
    .local v7, "ownerViewPosition":I
    if-ltz v7, :cond_6

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v7, v8, :cond_5

    goto :goto_3

    .line 539
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 536
    :cond_6
    :goto_3
    return-object v1
.end method

.method private getInitialMenuPosition()I
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 285
    .local v0, "layoutDirection":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 286
    :cond_0
    nop

    .line 285
    :goto_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 7
    .param p1, "nextMenuWidth"    # I

    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 300
    .local v0, "lastListView":Landroid/widget/ListView;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 301
    .local v1, "screenLocation":[I
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 303
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v3, "displayFrame":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 306
    iget v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 307
    aget v4, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, p1

    .line 308
    .local v4, "right":I
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_0

    .line 309
    return v5

    .line 311
    :cond_0
    return v2

    .line 313
    .end local v4    # "right":I
    :cond_1
    aget v4, v1, v5

    sub-int/2addr v4, p1

    .line 314
    .local v4, "left":I
    if-gez v4, :cond_2

    .line 315
    return v2

    .line 317
    :cond_2
    return v5
.end method

.method private showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 18
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 339
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/oneplus/lib/menu/MenuAdapter;

    iget-boolean v4, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    invoke-direct {v3, v1, v2, v4}, Lcom/oneplus/lib/menu/MenuAdapter;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 345
    .local v3, "adapter":Lcom/oneplus/lib/menu/MenuAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v4, :cond_0

    .line 347
    invoke-virtual {v3, v5}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    invoke-static/range {p1 .. p1}, Lcom/oneplus/lib/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 354
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v6}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    .line 355
    .local v4, "menuWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->createPopupWindow()Lcom/oneplus/lib/menu/MenuPopupWindow;

    move-result-object v6

    .line 356
    .local v6, "popupWindow":Lcom/oneplus/lib/menu/MenuPopupWindow;
    invoke-virtual {v6, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    invoke-virtual {v6, v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setContentWidth(I)V

    .line 358
    iget v8, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v6, v8}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setDropDownGravity(I)V

    .line 362
    iget-object v8, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 363
    iget-object v8, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 364
    .local v8, "parentInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-direct {v0, v8, v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v9

    .local v9, "parentView":Landroid/view/View;
    goto :goto_1

    .line 366
    .end local v8    # "parentInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v9    # "parentView":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    .line 367
    .restart local v8    # "parentInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v9, 0x0

    .line 370
    .restart local v9    # "parentView":Landroid/view/View;
    :goto_1
    const/4 v10, 0x0

    if-eqz v9, :cond_8

    .line 372
    invoke-virtual {v6, v10}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setTouchModal(Z)V

    .line 373
    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 375
    invoke-direct {v0, v4}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v11

    .line 376
    .local v11, "nextMenuPosition":I
    if-ne v11, v5, :cond_3

    move v12, v5

    goto :goto_2

    :cond_3
    move v12, v10

    .line 377
    .local v12, "showOnRight":Z
    :goto_2
    iput v11, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    .line 381
    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastO()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 384
    invoke-virtual {v6, v9}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 385
    const/4 v13, 0x0

    .line 386
    .local v13, "parentOffsetLeft":I
    const/4 v14, 0x0

    move v15, v13

    .local v14, "parentOffsetTop":I
    goto :goto_3

    .line 397
    .end local v13    # "parentOffsetLeft":I
    .end local v14    # "parentOffsetTop":I
    :cond_4
    const/4 v13, 0x2

    new-array v14, v13, [I

    .line 398
    .local v14, "anchorScreenLocation":[I
    iget-object v15, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 400
    new-array v13, v13, [I

    .line 401
    .local v13, "parentViewScreenLocation":[I
    invoke-virtual {v9, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 405
    aget v15, v13, v10

    aget v16, v14, v10

    sub-int v15, v15, v16

    .line 406
    .local v15, "parentOffsetLeft":I
    aget v16, v13, v5

    aget v17, v14, v5

    sub-int v14, v16, v17

    .line 414
    .end local v13    # "parentViewScreenLocation":[I
    .local v14, "parentOffsetTop":I
    :goto_3
    iget v13, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v7, 0x5

    and-int/2addr v13, v7

    if-ne v13, v7, :cond_6

    .line 415
    if-eqz v12, :cond_5

    .line 416
    add-int v7, v15, v4

    .local v7, "x":I
    goto :goto_4

    .line 418
    .end local v7    # "x":I
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v15, v7

    .restart local v7    # "x":I
    goto :goto_4

    .line 421
    .end local v7    # "x":I
    :cond_6
    if-eqz v12, :cond_7

    .line 422
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v15

    .restart local v7    # "x":I
    goto :goto_4

    .line 424
    .end local v7    # "x":I
    :cond_7
    sub-int v7, v15, v4

    .line 427
    .restart local v7    # "x":I
    :goto_4
    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 430
    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 431
    invoke-virtual {v6, v14}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setVerticalOffset(I)V

    .line 432
    .end local v7    # "x":I
    .end local v11    # "nextMenuPosition":I
    .end local v12    # "showOnRight":Z
    .end local v14    # "parentOffsetTop":I
    .end local v15    # "parentOffsetLeft":I
    goto :goto_5

    .line 433
    :cond_8
    iget-boolean v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v5, :cond_9

    .line 434
    iget v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 436
    :cond_9
    iget-boolean v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v5, :cond_a

    .line 437
    iget v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setVerticalOffset(I)V

    .line 439
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 440
    .local v5, "epicenterBounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 443
    .end local v5    # "epicenterBounds":Landroid/graphics/Rect;
    :goto_5
    new-instance v5, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v7, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v5, v6, v1, v7}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Lcom/oneplus/lib/menu/MenuPopupWindow;Lcom/oneplus/lib/menu/MenuBuilder;I)V

    .line 444
    .local v5, "menuInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v7, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    .line 448
    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 449
    .local v7, "listView":Landroid/widget/ListView;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 452
    if-nez v8, :cond_b

    iget-boolean v11, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v11, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 453
    sget v11, Lcom/oneplus/commonctrl/R$layout;->op_abc_popup_menu_header_item_layout:I

    invoke-virtual {v2, v11, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 455
    .local v11, "titleItemView":Landroid/widget/FrameLayout;
    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 456
    .local v12, "titleView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 461
    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    .line 463
    .end local v11    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v12    # "titleView":Landroid/widget/TextView;
    :cond_b
    return-void
.end method


# virtual methods
.method public addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 323
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 325
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_0
    return-void
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 257
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 259
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 260
    .local v1, "addedMenus":[Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 261
    aget-object v3, v1, v2

    .line 262
    .local v3, "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->dismiss()V

    .line 260
    .end local v3    # "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 267
    .end local v1    # "addedMenus":[Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getId()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const/4 v0, 0x0

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 724
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object p1

    return-object p1
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/lib/menu/MenuBuilder;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public isShowing()Z
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 8
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 626
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/oneplus/lib/menu/MenuBuilder;)I

    move-result v0

    .line 627
    .local v0, "menuIndex":I
    if-gez v0, :cond_0

    .line 628
    return-void

    .line 632
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 633
    .local v1, "nextMenuIndex":I
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 635
    .local v2, "childInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 639
    .end local v2    # "childInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 640
    .local v2, "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 641
    iget-boolean v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 643
    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 644
    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnimationStyle(I)V

    .line 646
    :cond_2
    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->dismiss()V

    .line 648
    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 649
    .local v4, "count":I
    if-lez v4, :cond_3

    .line 650
    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    .line 652
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    .line 655
    :goto_0
    if-nez v4, :cond_7

    .line 657
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    .line 659
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_4

    .line 660
    const/4 v6, 0x1

    invoke-interface {v3, p1, v6}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 663
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_6

    .line 664
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 665
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 667
    :cond_5
    iput-object v5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 669
    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 673
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v3}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    .line 674
    :cond_7
    if-eqz p2, :cond_8

    .line 678
    iget-object v5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 679
    .local v5, "rootInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v5, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 681
    .end local v5    # "rootInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "dismissedInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 559
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 560
    .local v3, "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    move-object v0, v3

    .line 562
    goto :goto_1

    .line 558
    .end local v3    # "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 569
    iget-object v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 571
    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 36
    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/menu/MenuPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 271
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    .line 273
    return v1

    .line 275
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 695
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 588
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 589
    .local v1, "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 591
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 592
    return v2

    .line 594
    .end local v1    # "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 599
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 600
    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    .line 602
    :cond_2
    return v2

    .line 604
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 708
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 709
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 712
    iget v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 713
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 712
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 715
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 582
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 583
    return-void
.end method

.method public bridge synthetic setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 211
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "dropDownGravity"    # I

    .line 699
    iget v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 700
    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 701
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 701
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 704
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 732
    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    .line 733
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 719
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 720
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 753
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 754
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 738
    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    .line 739
    return-void
.end method

.method public show()V
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    .line 234
    .local v1, "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    invoke-direct {p0, v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 235
    .end local v1    # "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 242
    .local v0, "addGlobalListener":Z
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 243
    if-eqz v0, :cond_3

    .line 244
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 248
    .end local v0    # "addGlobalListener":Z
    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    .line 575
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 576
    .local v1, "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/oneplus/lib/menu/MenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 577
    .end local v1    # "info":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_0

    .line 578
    :cond_0
    return-void
.end method
