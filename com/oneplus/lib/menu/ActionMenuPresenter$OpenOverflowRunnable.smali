.class Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    .line 789
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    .line 791
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->changeMenuMode()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 799
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    iput-object v2, v1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 803
    return-void
.end method
