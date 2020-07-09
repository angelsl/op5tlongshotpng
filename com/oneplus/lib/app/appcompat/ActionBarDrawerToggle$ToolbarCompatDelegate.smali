.class Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mDefaultContentDescription:Ljava/lang/CharSequence;

.field final mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field final mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 612
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 613
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    .line 614
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .line 624
    if-nez p1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(I)V

    .line 629
    :goto_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 618
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 619
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;->setActionBarDescription(I)V

    .line 620
    return-void
.end method
