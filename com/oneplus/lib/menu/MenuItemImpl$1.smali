.class Lcom/oneplus/lib/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/menu/MenuItemImpl;->setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 780
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl$1;->this$0:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 783
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl$1;->this$0:Lcom/oneplus/lib/menu/MenuItemImpl;

    iget-object v0, v0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl$1;->this$0:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemVisibleChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    .line 784
    return-void
.end method
