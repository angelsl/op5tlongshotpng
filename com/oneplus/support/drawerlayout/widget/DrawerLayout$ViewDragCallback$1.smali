.class Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 2148
    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2150
    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    .line 2151
    return-void
.end method
