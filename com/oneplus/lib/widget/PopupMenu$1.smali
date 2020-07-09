.class Lcom/oneplus/lib/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/PopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/PopupMenu;

    .line 87
    iput-object p1, p0, Lcom/oneplus/lib/widget/PopupMenu$1;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$1;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-static {v0}, Lcom/oneplus/lib/widget/PopupMenu;->access$000(Lcom/oneplus/lib/widget/PopupMenu;)Lcom/oneplus/lib/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$1;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-static {v0}, Lcom/oneplus/lib/widget/PopupMenu;->access$000(Lcom/oneplus/lib/widget/PopupMenu;)Lcom/oneplus/lib/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/lib/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 98
    return-void
.end method
