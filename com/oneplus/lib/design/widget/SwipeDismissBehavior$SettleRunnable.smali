.class Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mDismiss:Z

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dismiss"    # Z

    .line 363
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 365
    iput-boolean p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    .line 366
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 370
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 377
    :cond_1
    :goto_0
    return-void
.end method
