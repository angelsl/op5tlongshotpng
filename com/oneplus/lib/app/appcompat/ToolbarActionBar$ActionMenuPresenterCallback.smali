.class final Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 613
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 614
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 618
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->dismissPopupMenus()V

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 622
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 623
    return-void
.end method

.method public onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 604
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 606
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
