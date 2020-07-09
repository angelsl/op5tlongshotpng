.class Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/HeaderBehavior;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/HeaderBehavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p2, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>.FlingRunnable;"
    .local p3, "layout":Landroid/view/View;, "TV;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->this$0:Lcom/oneplus/lib/design/widget/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mParent:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    .line 295
    iput-object p3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 296
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 300
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>.FlingRunnable;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->this$0:Lcom/oneplus/lib/design/widget/HeaderBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->this$0:Lcom/oneplus/lib/design/widget/HeaderBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->this$0:Lcom/oneplus/lib/design/widget/HeaderBehavior;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mParent:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {v3}, Lcom/oneplus/support/core/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/oneplus/support/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->this$0:Lcom/oneplus/lib/design/widget/HeaderBehavior;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mParent:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 309
    :cond_1
    :goto_0
    return-void
.end method
