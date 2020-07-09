.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 264
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 270
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;"
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 270
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    return-object p2
.end method
