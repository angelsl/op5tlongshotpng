.class public Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 60
    return-void
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->dismissPopupMenus()V

    .line 229
    :cond_0
    return-void
.end method

.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 237
    return-void
.end method

.method public getDecorToolbar()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 96
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 193
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initFeature(I)V
    .locals 0
    .param p1, "windowFeature"    # I

    .line 104
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 174
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 366
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 367
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    .line 370
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 374
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 375
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    .line 378
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 259
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 260
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 262
    .local v1, "isPortrait":Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 263
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 265
    .local v3, "heightMode":I
    const/4 v4, 0x0

    .line 266
    .local v4, "fixedWidth":Z
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v7, :cond_4

    .line 267
    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 268
    .local v9, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v9, :cond_4

    iget v10, v9, Landroid/util/TypedValue;->type:I

    if-eqz v10, :cond_4

    .line 269
    const/4 v10, 0x0

    .line 270
    .local v10, "w":I
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_2

    .line 271
    invoke-virtual {v9, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    goto :goto_2

    .line 272
    :cond_2
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v5, :cond_3

    .line 273
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    .line 275
    :cond_3
    :goto_2
    if-lez v10, :cond_4

    .line 276
    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 278
    .local v11, "widthSize":I
    nop

    .line 279
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 278
    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 280
    const/4 v4, 0x1

    .line 285
    .end local v9    # "tvw":Landroid/util/TypedValue;
    .end local v10    # "w":I
    .end local v11    # "widthSize":I
    :cond_4
    if-ne v3, v7, :cond_8

    .line 286
    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 287
    .local v9, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v9, :cond_8

    iget v10, v9, Landroid/util/TypedValue;->type:I

    if-eqz v10, :cond_8

    .line 288
    const/4 v10, 0x0

    .line 289
    .local v10, "h":I
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_6

    .line 290
    invoke-virtual {v9, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    goto :goto_4

    .line 291
    :cond_6
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v5, :cond_7

    .line 292
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    .line 294
    :cond_7
    :goto_4
    if-lez v10, :cond_8

    .line 295
    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 296
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 297
    .local v11, "heightSize":I
    nop

    .line 298
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 297
    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 303
    .end local v9    # "tvh":Landroid/util/TypedValue;
    .end local v10    # "h":I
    .end local v11    # "heightSize":I
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMeasuredWidth()I

    move-result v9

    .line 306
    .local v9, "width":I
    const/4 v10, 0x0

    .line 308
    .local v10, "measure":Z
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 310
    if-nez v4, :cond_d

    if-ne v2, v7, :cond_d

    .line 311
    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 312
    .local v7, "tv":Landroid/util/TypedValue;
    :goto_5
    if-eqz v7, :cond_d

    iget v11, v7, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_d

    .line 313
    const/4 v11, 0x0

    .line 314
    .local v11, "min":I
    iget v12, v7, Landroid/util/TypedValue;->type:I

    if-ne v12, v6, :cond_a

    .line 315
    invoke-virtual {v7, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v11, v5

    goto :goto_6

    .line 316
    :cond_a
    iget v6, v7, Landroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_b

    .line 317
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v11, v5

    .line 319
    :cond_b
    :goto_6
    if-lez v11, :cond_c

    .line 320
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v11, v5

    .line 322
    :cond_c
    if-ge v9, v11, :cond_d

    .line 323
    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 324
    const/4 v10, 0x1

    .line 329
    .end local v7    # "tv":Landroid/util/TypedValue;
    .end local v11    # "min":I
    :cond_d
    if-eqz v10, :cond_e

    .line 330
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 332
    :cond_e
    return-void
.end method

.method pullChildren()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getDecorToolbar()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 64
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method public setAttachListener(Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;)V
    .locals 0
    .param p1, "attachListener"    # Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    .line 240
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    .line 241
    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->requestLayout()V

    .line 255
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 132
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 213
    :cond_0
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuPrepared()V

    .line 205
    :cond_0
    return-void
.end method

.method public setSupportToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 67
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 68
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .line 109
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 88
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
