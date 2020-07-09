.class public final Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field elevation:F

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    .line 1961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1962
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .line 2066
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2067
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 2068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2070
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .line 1975
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 1978
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    .line 1979
    return-void
.end method

.method getListMenuView(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 2028
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2030
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    .line 2031
    new-instance v0, Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    .line 2033
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 2034
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 2037
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v0

    .line 2039
    .local v0, "result":Lcom/oneplus/lib/menu/MenuView;
    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    .line 1965
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1968
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2056
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    .line 2057
    .local v0, "savedState":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    .line 2058
    iget-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->wasLastOpen:Z

    .line 2059
    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2061
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 2062
    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 2063
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2043
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;-><init>()V

    .line 2044
    .local v0, "savedState":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    .line 2045
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    .line 2047
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 2048
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2049
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 2052
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 2016
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 2018
    :cond_0
    if-eqz v0, :cond_1

    .line 2019
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 2021
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 2022
    if-eqz p1, :cond_2

    .line 2023
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 2025
    :cond_2
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1982
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1983
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1984
    .local v1, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1987
    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1988
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1989
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1993
    :cond_0
    sget v2, Lcom/oneplus/commonctrl/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1994
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1995
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1998
    :cond_1
    const v2, 0x1010490

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1999
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_2

    .line 2000
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->elevation:F

    .line 2002
    :cond_2
    new-instance v2, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v2

    .line 2003
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2005
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 2007
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2008
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    .line 2010
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    .line 2012
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2013
    return-void
.end method
