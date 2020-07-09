.class Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;
.super Lcom/oneplus/lib/app/appcompat/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;,
        Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;,
        Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarMenuPrepared:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/view/Window$Callback;

    .line 71
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 72
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 73
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method private ensureListMenuPresenter(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 526
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 527
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuBuilder;

    .line 529
    .local v0, "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 530
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 531
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 532
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 535
    sget v4, Lcom/oneplus/commonctrl/R$attr;->actionBarPopupTheme:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 536
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 537
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 541
    :cond_0
    sget v4, Lcom/oneplus/commonctrl/R$attr;->panelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 542
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 543
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 545
    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$style;->OPTheme_AppCompat_CompactMenu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 548
    :goto_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v4

    .line 549
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 552
    new-instance v4, Lcom/oneplus/lib/menu/ListMenuPresenter;

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_layout:I

    invoke-direct {v4, v1, v5}, Lcom/oneplus/lib/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    .line 553
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    new-instance v5, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/ListMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 554
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 556
    .end local v0    # "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_2
    return-void
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 3

    .line 588
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    new-instance v2, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    .line 493
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I

    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 354
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapseActionView()Z
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->collapseActionView()V

    .line 439
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .line 501
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 506
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 507
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 508
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 513
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->ensureListMenuPresenter(Landroid/view/Menu;)V

    .line 515
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mListMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 522
    :cond_1
    return-object v0

    .line 516
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .line 211
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2
    .param p1, "index"    # I

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabCount()I
    .locals 1

    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setVisibility(I)V

    .line 416
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 189
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .line 473
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 474
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 476
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 475
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 477
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 478
    invoke-interface {v0, p1, p2, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 483
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    return v1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 465
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->openOptionsMenu()Z

    .line 468
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    .line 445
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 446
    .local v0, "menu":Landroid/view/Menu;
    instance-of v1, v0, Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 447
    .local v1, "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    :goto_0
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 451
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 452
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 453
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 454
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_3
    if-eqz v1, :cond_4

    .line 458
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 461
    :cond_4
    return-void

    .line 457
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 458
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v2
.end method

.method public removeAllTabs()V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    .line 497
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public removeTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestFocus()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 237
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 239
    const/4 v1, 0x1

    return v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 98
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 85
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setCustomView(Landroid/view/View;Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;)V

    .line 86
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 175
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .line 277
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setDisplayOptions(II)V

    .line 278
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .line 256
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setDisplayOptions(II)V

    .line 257
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 262
    .local v0, "currentOptions":I
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 263
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .line 287
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setDisplayOptions(II)V

    .line 288
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .line 272
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setDisplayOptions(II)V

    .line 273
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .line 282
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setDisplayOptions(II)V

    .line 283
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1
    .param p1, "useLogo"    # Z

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->setDisplayOptions(II)V

    .line 268
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 140
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 179
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationContentDescription(I)V

    .line 180
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 164
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationIcon(I)V

    .line 165
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 135
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 104
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    .line 105
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    .line 115
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 317
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationMode(I)V

    .line 321
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 202
    nop

    .line 207
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 185
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 130
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 125
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 251
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public show()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setVisibility(I)V

    .line 409
    return-void
.end method
