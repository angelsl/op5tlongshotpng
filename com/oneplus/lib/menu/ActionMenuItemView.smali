.class public Lcom/oneplus/lib/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;,
        Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->abc_action_menu_icon_size:I

    sput v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->MAX_ICON_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 73
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->ActionMenuItemView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMinWidth:I

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/lib/menu/ActionMenuItemView;->MAX_ICON_SIZE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMaxIconSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMaxIconSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chenhb"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const/4 v3, -0x1

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 85
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    .line 86
    return-void
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 102
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 103
    .local v1, "widthDp":I
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 105
    .local v2, "heightDp":I
    const/16 v3, 0x1e0

    if-ge v1, v3, :cond_2

    const/16 v4, 0x280

    if-lt v1, v4, :cond_0

    if-ge v2, v3, :cond_2

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method private updateTextButtonVisibility()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 187
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 188
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    and-int/2addr v0, v1

    .line 190
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 194
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    if-eqz v0, :cond_4

    move-object v3, v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_3
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 199
    :cond_5
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    :goto_4
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 203
    .local v3, "tooltipText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 205
    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_5
    invoke-static {p0, v1}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 207
    :cond_7
    invoke-static {p0, v3}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 209
    :goto_6
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 122
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 124
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setId(I)V

    .line 128
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setVisibility(I)V

    .line 129
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 130
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/oneplus/lib/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    .line 135
    :cond_1
    return-void
.end method

.method public needsDividerAfter()Z
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 90
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 93
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 271
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    .line 272
    .local v0, "textVisible":Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    .line 273
    invoke-super {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 280
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 281
    .local v2, "widthSize":I
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 282
    .local v3, "oldMeasuredWidth":I
    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_1

    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 283
    :cond_1
    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMinWidth:I

    :goto_0
    nop

    .line 285
    .local v4, "targetWidth":I
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_2

    iget v6, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v6, :cond_2

    if-ge v3, v4, :cond_2

    .line 287
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v5, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 291
    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v5

    .line 295
    .local v5, "w":I
    iget-object v6, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 296
    .local v6, "dw":I
    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 298
    .end local v5    # "w":I
    .end local v6    # "dw":I
    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 335
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 336
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 169
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 174
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .line 177
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 178
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 179
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->actionFormatChanged()V

    .line 183
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 213
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 214
    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 216
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 218
    .local v1, "height":I
    move v2, v0

    .line 219
    .local v2, "tempWidth":I
    move v3, v1

    .line 220
    .local v3, "tempHeight":I
    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v4, :cond_0

    .line 221
    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 222
    .local v4, "scale":F
    iget v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 223
    int-to-float v5, v0

    mul-float/2addr v5, v4

    float-to-int v3, v5

    .line 225
    .end local v4    # "scale":F
    :cond_0
    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v1, v4, :cond_1

    .line 226
    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 227
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 228
    int-to-float v5, v0

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 230
    .end local v4    # "scale":F
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "tempWidth":I
    .end local v3    # "tempHeight":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 236
    return-void
.end method

.method public setItemInvoker(Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    .line 154
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    .line 155
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 111
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    return-void
.end method

.method public setPopupCallback(Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    .line 158
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    .line 159
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 245
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 249
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 251
    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 252
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 256
    const/4 v0, 0x1

    return v0
.end method
