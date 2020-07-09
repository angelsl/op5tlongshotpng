.class Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuView;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 767
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    .line 768
    invoke-interface {v0, p2}, Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 767
    :goto_0
    return v0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-static {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 779
    .local v0, "ac":Landroid/app/Activity;
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-static {v1}, Lcom/oneplus/lib/menu/ActionMenuView;->access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 781
    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 783
    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 789
    .end local v0    # "ac":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void
.end method
