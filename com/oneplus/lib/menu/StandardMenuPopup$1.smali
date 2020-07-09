.class Lcom/oneplus/lib/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/menu/StandardMenuPopup;

    .line 38
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 46
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    iget-object v1, v1, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/StandardMenuPopup;->dismiss()V

    .line 53
    .end local v0    # "anchor":Landroid/view/View;
    :cond_2
    :goto_1
    return-void
.end method
