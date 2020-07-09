.class final Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V
    .locals 0

    .line 1840
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1841
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 1845
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    .line 1846
    .local v0, "parentMenu":Landroid/view/Menu;
    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1847
    .local v2, "isSubMenu":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    if-eqz v2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1848
    .local v3, "panel":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v3, :cond_3

    .line 1849
    if-eqz v2, :cond_2

    .line 1850
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget v5, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {v4, v5, v3, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->callOnPanelClosed(ILcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1851
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v4, v3, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_2

    .line 1855
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v1, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1858
    :cond_3
    :goto_2
    return-void
.end method

.method public onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 1862
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1864
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1865
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1868
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
