.class final Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 658
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 666
    :cond_1
    :goto_0
    return-void
.end method
