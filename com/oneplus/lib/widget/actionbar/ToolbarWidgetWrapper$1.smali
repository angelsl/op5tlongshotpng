.class Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/oneplus/lib/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;)V
    .locals 8
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    .line 169
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v7, Lcom/oneplus/lib/menu/ActionMenuItem;

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->mNavItem:Lcom/oneplus/lib/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mMenuPrepared:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->mNavItem:Lcom/oneplus/lib/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 177
    :cond_0
    return-void
.end method
