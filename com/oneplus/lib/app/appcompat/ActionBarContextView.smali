.class public Lcom/oneplus/lib/app/appcompat/ActionBarContextView;
.super Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
.source "ActionBarContextView.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleStyleRes:I

    .line 58
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleStyleRes:I

    .line 61
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    .line 64
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCloseItemLayout:I

    .line 68
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/oneplus/commonctrl/R$id;->action_bar_title:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/oneplus/commonctrl/R$id;->action_bar_subtitle:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 124
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 127
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 136
    .local v0, "hasTitle":Z
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 137
    .local v1, "hasSubtitle":Z
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 140
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 142
    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->killMode()V

    .line 178
    return-void

    .line 180
    :cond_0
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 216
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 221
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 145
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->addView(Landroid/view/View;)V

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    nop

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    sget v1, Lcom/oneplus/commonctrl/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "closeButton":Landroid/view/View;
    new-instance v1, Lcom/oneplus/lib/app/appcompat/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView$1;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContextView;Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    .line 161
    .local v1, "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 164
    :cond_2
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 165
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 167
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 169
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 170
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 171
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->removeAllViews()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 185
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 186
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onDetachedFromWindow()V

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 78
    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 353
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 306
    move-object v6, p0

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 307
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    .line 308
    .local v0, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingTop()I

    move-result v8

    .line 309
    .local v8, "y":I
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 311
    .local v9, "contentHeight":I
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v10, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_3

    .line 312
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 313
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_1

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    move v12, v1

    .line 314
    .local v12, "startMargin":I
    if-eqz v7, :cond_2

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    move v13, v1

    .line 315
    .local v13, "endMargin":I
    invoke-static {v0, v12, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->next(IIZ)I

    move-result v14

    .line 316
    .end local v0    # "x":I
    .local v14, "x":I
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    move v2, v14

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    .line 317
    invoke-static {v14, v13, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->next(IIZ)I

    move-result v0

    move v11, v0

    .end local v14    # "x":I
    .restart local v0    # "x":I
    goto :goto_3

    .line 320
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    .end local v13    # "endMargin":I
    :cond_3
    move v11, v0

    .end local v0    # "x":I
    .local v11, "x":I
    :goto_3
    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 321
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 324
    :cond_4
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 325
    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 328
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    goto :goto_4

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_4
    move v10, v0

    .line 330
    .end local v11    # "x":I
    .local v10, "x":I
    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_7

    .line 331
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    xor-int/lit8 v5, v7, 0x1

    move-object v0, p0

    move v2, v10

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 333
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 226
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 227
    .local v1, "widthMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_11

    .line 232
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 233
    .local v3, "heightMode":I
    if-eqz v3, :cond_10

    .line 238
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 240
    .local v4, "contentWidth":I
    iget v5, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    if-lez v5, :cond_0

    .line 241
    iget v5, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 243
    .local v5, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 244
    .local v6, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 245
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 246
    .local v8, "height":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 248
    .local v10, "childSpecHeight":I
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 249
    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 250
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 251
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v7, v13

    .line 254
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v11}, Lcom/oneplus/lib/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_2

    .line 255
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 259
    :cond_2
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_7

    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v13, :cond_7

    .line 260
    iget-boolean v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleOptional:Z

    if-eqz v13, :cond_6

    .line 261
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 262
    .local v11, "titleWidthSpec":I
    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 263
    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    .line 264
    .local v13, "titleWidth":I
    if-gt v13, v7, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    move v14, v12

    .line 265
    .local v14, "titleFits":Z
    :goto_1
    if-eqz v14, :cond_4

    .line 266
    sub-int/2addr v7, v13

    .line 268
    :cond_4
    iget-object v15, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    const/16 v12, 0x8

    :goto_2
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    .end local v11    # "titleWidthSpec":I
    .end local v13    # "titleWidth":I
    .end local v14    # "titleFits":Z
    goto :goto_3

    .line 270
    :cond_6
    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 274
    :cond_7
    :goto_3
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v11, :cond_c

    .line 275
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 276
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_8

    .line 277
    move v12, v2

    goto :goto_4

    :cond_8
    move v12, v9

    .line 278
    .local v12, "customWidthMode":I
    :goto_4
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_9

    .line 279
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_5

    :cond_9
    move v14, v7

    .line 280
    .local v14, "customWidth":I
    :goto_5
    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v15, v13, :cond_a

    .line 281
    goto :goto_6

    :cond_a
    move v2, v9

    .line 282
    .local v2, "customHeightMode":I
    :goto_6
    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v9, :cond_b

    .line 283
    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_7

    :cond_b
    move v9, v8

    .line 284
    .local v9, "customHeight":I
    :goto_7
    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 285
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .local v16, "widthMode":I
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 284
    invoke-virtual {v13, v15, v1}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 274
    .end local v2    # "customHeightMode":I
    .end local v9    # "customHeight":I
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "customWidthMode":I
    .end local v14    # "customWidth":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_c
    move/from16 v16, v1

    .line 288
    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    :goto_8
    iget v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    if-gtz v1, :cond_f

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getChildCount()I

    move-result v2

    .line 291
    .local v2, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    if-ge v9, v2, :cond_e

    .line 292
    invoke-virtual {v0, v9}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 293
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 294
    .local v12, "paddedViewHeight":I
    if-le v12, v1, :cond_d

    .line 295
    move v1, v12

    .line 291
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 298
    .end local v9    # "i":I
    :cond_e
    invoke-virtual {v0, v4, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setMeasuredDimension(II)V

    .line 299
    .end local v1    # "measuredHeight":I
    .end local v2    # "count":I
    goto :goto_a

    .line 300
    :cond_f
    invoke-virtual {v0, v4, v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setMeasuredDimension(II)V

    .line 302
    :goto_a
    return-void

    .line 234
    .end local v4    # "contentWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "verticalPadding":I
    .end local v7    # "availableWidth":I
    .end local v8    # "height":I
    .end local v10    # "childSpecHeight":I
    .end local v16    # "widthMode":I
    .local v1, "widthMode":I
    :cond_10
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    .end local v3    # "heightMode":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_11
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 81
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    .line 82
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 89
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->requestLayout()V

    .line 97
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 106
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->initTitle()V

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 100
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 101
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->initTitle()V

    .line 102
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 356
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->requestLayout()V

    .line 359
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleOptional:Z

    .line 360
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
