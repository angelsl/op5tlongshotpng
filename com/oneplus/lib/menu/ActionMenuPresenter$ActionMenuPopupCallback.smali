.class Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;-><init>()V

    .line 808
    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
