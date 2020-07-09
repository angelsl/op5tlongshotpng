.class Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
.super Lcom/oneplus/lib/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/menu/BaseWrapper<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p2, "object"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 394
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    .line 395
    invoke-direct {p0, p2}, Lcom/oneplus/lib/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 396
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
