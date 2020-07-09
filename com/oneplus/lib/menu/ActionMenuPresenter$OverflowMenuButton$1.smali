.class Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "src"    # Landroid/view/View;

    .line 645
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x0

    return-object v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x0

    return v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 671
    const/4 v0, 0x1

    return v0
.end method
