.class final Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 632
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 635
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 639
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 642
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
