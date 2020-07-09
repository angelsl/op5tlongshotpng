.class Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/oneplus/lib/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;

    .line 740
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 741
    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 743
    invoke-virtual {p3}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 744
    .local v0, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 746
    iget-object v1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 749
    :cond_1
    iget-object p1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 750
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 755
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 757
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->onDismiss()V

    .line 758
    return-void
.end method
