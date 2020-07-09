.class Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;
.super Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 9
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method
