.class Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;
.super Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    .line 559
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    .line 560
    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 561
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2
    .param p1, "featureId"    # I

    .line 575
    if-eqz p1, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 578
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 583
    .end local v0    # "menu":Landroid/view/Menu;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 565
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 566
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuPrepared()V

    .line 568
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mToolbarMenuPrepared:Z

    .line 570
    :cond_0
    return v0
.end method
