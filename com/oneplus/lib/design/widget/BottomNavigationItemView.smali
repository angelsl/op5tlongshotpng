.class public Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private badge:Lcom/oneplus/lib/design/widget/BadgeView;

.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_design_bottom_navigation_item:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 88
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    .line 90
    sget v1, Lcom/oneplus/commonctrl/R$id;->icon:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 91
    sget v1, Lcom/oneplus/commonctrl/R$id;->badge:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/BadgeView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->badge:Lcom/oneplus/lib/design/widget/BadgeView;

    .line 92
    sget v1, Lcom/oneplus/commonctrl/R$id;->smallLabel:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/oneplus/commonctrl/R$id;->largeLabel:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->badge:Lcom/oneplus/lib/design/widget/BadgeView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 97
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 98
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setFocusable(Z)V

    .line 100
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 101
    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .locals 2
    .param p1, "smallLabelSize"    # F
    .param p2, "largeLabelSize"    # F

    .line 336
    sub-float v0, p1, p2

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    .line 337
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    .line 338
    mul-float/2addr v0, p1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    .line 339
    return-void
.end method

.method private setViewLayoutParams(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "topMargin"    # I
    .param p3, "gravity"    # I

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 244
    .local v0, "viewParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 245
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "visibility"    # I

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 251
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 252
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    return-void
.end method


# virtual methods
.method bindNotification(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;)V
    .locals 1
    .param p1, "notification"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    .line 352
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->badge:Lcom/oneplus/lib/design/widget/BadgeView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BadgeView;->bindNotification(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;)V

    .line 353
    return-void
.end method

.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    return v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 106
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setCheckable(Z)V

    .line 107
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setEnabled(Z)V

    .line 109
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setId(I)V

    .line 112
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 272
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 273
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sget-object v1, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    .line 276
    :cond_0
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->refreshDrawableState()V

    .line 166
    return-void
.end method

.method public setChecked(Z)V
    .locals 9
    .param p1, "checked"    # Z

    .line 170
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 175
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/16 v6, 0x31

    const/4 v7, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    move v0, v1

    .line 226
    .local v0, "isLandScape":Z
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    if-eqz v0, :cond_2

    move v3, v6

    :cond_2
    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 227
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    goto/16 :goto_3

    .line 212
    .end local v0    # "isLandScape":Z
    :cond_3
    if-eqz p1, :cond_4

    .line 213
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 216
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto/16 :goto_3

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 222
    goto/16 :goto_3

    .line 201
    :cond_5
    if-eqz p1, :cond_6

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 203
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_1

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    goto :goto_3

    .line 177
    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    if-eqz v0, :cond_9

    .line 178
    if-eqz p1, :cond_8

    .line 179
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_2

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 187
    :cond_9
    if-eqz p1, :cond_a

    .line 188
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_3

    .line 193
    :cond_a
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 198
    nop

    .line 235
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->refreshDrawableState()V

    .line 239
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setSelected(Z)V

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 257
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    nop

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Lcom/oneplus/support/core/view/PointerIconCompat;

    move-result-object v0

    .line 263
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Lcom/oneplus/support/core/view/PointerIconCompat;)V

    goto :goto_0

    .line 266
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Lcom/oneplus/support/core/view/PointerIconCompat;)V

    .line 268
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 284
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 287
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 288
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 290
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method

.method public setIconSize(I)V
    .locals 2
    .param p1, "iconSize"    # I

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    .local v0, "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 314
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 315
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 304
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .line 343
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 345
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 348
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 120
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    .line 121
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 139
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_1

    .line 140
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    .line 142
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    .local v0, "initialized":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 147
    .end local v0    # "initialized":Z
    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 2
    .param p1, "shifting"    # Z

    .line 128
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    if-eq v0, p1, :cond_1

    .line 129
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "initialized":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 136
    .end local v0    # "initialized":Z
    :cond_1
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 280
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 2
    .param p1, "activeTextAppearance"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 324
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 325
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 326
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 2
    .param p1, "inactiveTextAppearance"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 321
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 331
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 333
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    :cond_1
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method unbindNotification()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->badge:Lcom/oneplus/lib/design/widget/BadgeView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BadgeView;->unbindNotification()V

    .line 357
    return-void
.end method
