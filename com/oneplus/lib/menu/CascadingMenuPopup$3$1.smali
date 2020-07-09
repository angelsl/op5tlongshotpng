.class Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field final synthetic val$nextInfo:Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/CascadingMenuPopup$3;Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    .line 143
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->this$1:Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    iput-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->this$1:Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->this$1:Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iput-boolean v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 160
    :cond_1
    return-void
.end method
