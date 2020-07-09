.class public Lcom/oneplus/lib/menu/StandardMenuPopup;
.super Lcom/oneplus/lib/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .line 93
    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopup;-><init>()V

    .line 38
    new-instance v0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/StandardMenuPopup$1;-><init>(Lcom/oneplus/lib/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 56
    new-instance v0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/StandardMenuPopup$2;-><init>(Lcom/oneplus/lib/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 94
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 96
    iput-boolean p6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/oneplus/lib/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v1, p2, v0, v2}, Lcom/oneplus/lib/menu/MenuAdapter;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    .line 99
    iput p4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 100
    iput p5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->op_abc_config_prefDialogWidth:I

    .line 104
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 106
    iput-object p3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 108
    new-instance v2, Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleRes:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    .line 111
    invoke-virtual {p2, p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/menu/StandardMenuPopup;

    .line 22
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/menu/StandardMenuPopup;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver;

    .line 22
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/menu/StandardMenuPopup;

    .line 22
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private tryShow()Z
    .locals 9

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 126
    return v1

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 133
    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setModal(Z)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 140
    .local v0, "anchor":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 141
    .local v3, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 142
    if-eqz v3, :cond_3

    .line 143
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 146
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 147
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setDropDownGravity(I)V

    .line 149
    iget-boolean v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 150
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    iget-object v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/lib/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContentWidth:I

    .line 151
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 154
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setContentWidth(I)V

    .line 155
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setInputMethodMode(I)V

    .line 156
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 157
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    .line 159
    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 160
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 162
    iget-boolean v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 163
    iget-object v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/oneplus/commonctrl/R$layout;->op_abc_popup_menu_header_item_layout:I

    invoke-virtual {v6, v7, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 166
    .local v6, "titleItemView":Landroid/widget/FrameLayout;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 167
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 168
    iget-object v8, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_5
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 171
    invoke-virtual {v4, v6, v5, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    .end local v6    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    .line 179
    return v1

    .line 130
    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "addGlobalListener":Z
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 199
    return-void
.end method

.method public bridge synthetic collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->dismiss()V

    .line 194
    :cond_0
    return-void
.end method

.method public bridge synthetic expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getId()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object p1

    return-object p1
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getVerticalOffset()I

    move-result v0

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

    .line 22
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 269
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->dismiss()V

    .line 272
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 275
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->close()V

    .line 211
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 219
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 221
    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 22
    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/menu/MenuPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->dismiss()V

    .line 300
    return v1

    .line 302
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 289
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 239
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupHelper;

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 242
    .local v0, "subPopup":Lcom/oneplus/lib/menu/MenuPopupHelper;
    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 243
    invoke-static {p1}, Lcom/oneplus/lib/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 244
    iget v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setGravity(I)V

    .line 247
    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 251
    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 254
    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getHorizontalOffset()I

    move-result v2

    .line 255
    .local v2, "horizontalOffset":I
    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getVerticalOffset()I

    move-result v3

    .line 256
    .local v3, "verticalOffset":I
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/lib/menu/MenuPopupHelper;->tryShow(IIZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v1, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    .line 260
    :cond_0
    return v4

    .line 263
    .end local v0    # "subPopup":Lcom/oneplus/lib/menu/MenuPopupHelper;
    .end local v2    # "horizontalOffset":I
    .end local v3    # "verticalOffset":I
    :cond_1
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 293
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 294
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 234
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 235
    return-void
.end method

.method public bridge synthetic setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .line 116
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 117
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 121
    iput p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 122
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 318
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 319
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 307
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 308
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShowTitle:Z

    .line 339
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 323
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setVerticalOffset(I)V

    .line 324
    return-void
.end method

.method public show()V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 227
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 230
    :cond_0
    return-void
.end method
