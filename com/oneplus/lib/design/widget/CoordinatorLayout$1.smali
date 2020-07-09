.class Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    .line 2969
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;->this$0:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 2973
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;->this$0:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setWindowInsets(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
