.class Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .line 230
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 234
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->onWindowInsetChanged(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
