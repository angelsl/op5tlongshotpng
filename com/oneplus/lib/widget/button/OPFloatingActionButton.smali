.class public Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.super Landroid/widget/ImageView;
.source "OPFloatingActionButton.java"


# annotations
.annotation runtime Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;,
        Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final SIZE_MINI:I = 0x1

.field private static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mContentPadding:I

.field private final mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private mUserSetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 105
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 114
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_backgroundTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 119
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 121
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_rippleColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    .line 122
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_fabSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mSize:I

    .line 123
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_borderWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    .line 124
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_elevation:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 125
    .local v8, "op_elevation":F
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_pressedTranslationZ:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 127
    .local v9, "op_pressedTranslationZ":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance v2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V

    move-object v10, v2

    .line 150
    .local v10, "delegate":Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;
    new-instance v2, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-direct {v2, p0, v10}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_fab_content_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v11, v2

    .line 154
    .local v11, "maxContentSize":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v2

    sub-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mContentPadding:I

    .line 156
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v6, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget v7, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 158
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v2, v8}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setElevation(F)V

    .line 159
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v2, v9}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 161
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setClickable(Z)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 59
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 59
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mContentPadding:I

    return v0
.end method

.method static synthetic access$201(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 344
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    .line 356
    return-object p1

    .line 354
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 352
    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 350
    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 348
    :cond_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 346
    :cond_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method private static resolveAdjustedSize(II)I
    .locals 4
    .param p0, "desiredSize"    # I
    .param p1, "measureSpec"    # I

    .line 320
    move v0, p0

    .line 321
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 322
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 323
    .local v2, "specSize":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    move v0, v2

    goto :goto_0

    .line 327
    :cond_1
    move v0, p0

    .line 328
    goto :goto_0

    .line 333
    :cond_2
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 334
    nop

    .line 340
    :goto_0
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 308
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 310
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 2

    .line 297
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method final getUserSetVisibility()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    return v0
.end method

.method public hide()V
    .locals 1

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    .line 286
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "fromUser"    # Z

    .line 293
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->hide(Z)V

    .line 294
    return-void
.end method

.method final internalSetVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "fromUser"    # Z

    .line 170
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    if-eqz p2, :cond_0

    .line 172
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    .line 174
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 315
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 317
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 184
    .local v0, "preferredSize":I
    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    .line 185
    .local v1, "w":I
    invoke-static {v0, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->resolveAdjustedSize(II)I

    move-result v2

    .line 189
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 192
    .local v3, "d":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    if-eqz v0, :cond_0

    .line 267
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 270
    :cond_0
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 230
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 233
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 259
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 205
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_0

    .line 206
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setRippleColor(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 167
    return-void
.end method

.method public show()V
    .locals 1

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    .line 278
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "fromUser"    # Z

    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->show(Z)V

    .line 290
    return-void
.end method
