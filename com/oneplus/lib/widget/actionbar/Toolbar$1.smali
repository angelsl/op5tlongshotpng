.class Lcom/oneplus/lib/widget/actionbar/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/actionbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 133
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 136
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$000(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$000(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
