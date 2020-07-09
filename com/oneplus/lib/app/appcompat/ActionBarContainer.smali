.class public Lcom/oneplus/lib/app/appcompat/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    :goto_0
    nop

    .line 50
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 57
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_height:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mHeight:I

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getId()I

    move-result v2

    sget v3, Lcom/oneplus/commonctrl/R$id;->split_action_bar:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 60
    iput-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    .line 61
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    move v3, v4

    goto :goto_1

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    move v3, v4

    .line 65
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 67
    return-void
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 232
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 147
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 156
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 161
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 171
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 73
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 74
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 188
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 272
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 275
    .local v0, "tabContainer":Landroid/view/View;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 277
    .local v3, "hasTabs":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    .line 279
    .local v1, "containerHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 280
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 281
    .local v5, "tabHeight":I
    sub-int v6, v1, v5

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v7, v1, v7

    invoke-virtual {v0, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 285
    .end local v1    # "containerHeight":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_1
    const/4 v1, 0x0

    .line 286
    .local v1, "needsInvalidate":Z
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_2

    .line 287
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 288
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 292
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 293
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 294
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 295
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 294
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 296
    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 297
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 298
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 299
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 298
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 301
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    :goto_1
    const/4 v1, 0x1

    .line 305
    :cond_5
    iput-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsStacked:Z

    .line 306
    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 307
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    const/4 v1, 0x1

    .line 313
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 316
    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 242
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    .line 243
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_0

    .line 244
    nop

    .line 245
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 247
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 251
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 252
    .local v0, "mode":I
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_5

    .line 255
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .local v2, "topMarginForTabs":I
    goto :goto_0

    .line 257
    .end local v2    # "topMarginForTabs":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .restart local v2    # "topMarginForTabs":I
    goto :goto_0

    .line 260
    .end local v2    # "topMarginForTabs":I
    :cond_3
    const/4 v2, 0x0

    .line 262
    .restart local v2    # "topMarginForTabs":I
    :goto_0
    if-ne v0, v1, :cond_4

    .line 263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_4
    const v1, 0x7fffffff

    .line 264
    .local v1, "maxHeight":I
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 265
    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 264
    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setMeasuredDimension(II)V

    .line 268
    .end local v1    # "maxHeight":I
    .end local v2    # "topMarginForTabs":I
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 85
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    .line 89
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 92
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    move v0, v2

    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    move v0, v2

    .line 124
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 127
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 102
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 103
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    .line 107
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 110
    return-void
.end method

.method public setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    .line 200
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 204
    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 211
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .line 181
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsTransitioning:Z

    .line 182
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    .line 183
    :cond_0
    const/high16 v0, 0x40000

    .line 182
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setDescendantFocusability(I)V

    .line 184
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 133
    .local v1, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 136
    :cond_3
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 225
    if-eqz p3, :cond_0

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 141
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0
.end method
