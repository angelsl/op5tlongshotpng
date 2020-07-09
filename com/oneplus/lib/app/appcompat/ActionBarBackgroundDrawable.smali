.class Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# instance fields
.field final mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 11
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 17
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 33
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 37
    return-void
.end method
