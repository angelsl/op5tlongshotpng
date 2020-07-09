.class Lcom/oneplus/lib/design/widget/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BottomNavigationView;

    .line 205
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 208
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getSelectedItemId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    .line 210
    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->access$100(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->access$100(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 218
    return-void
.end method
