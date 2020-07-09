.class Lcom/oneplus/support/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .line 2198
    iput-object p1, p0, Lcom/oneplus/support/core/view/ViewCompat$1;->val$listener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 2202
    invoke-static {p2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 2203
    .local v0, "compatInsets":Lcom/oneplus/support/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lcom/oneplus/support/core/view/ViewCompat$1;->val$listener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 2204
    invoke-static {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->unwrap(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    return-object v1
.end method
