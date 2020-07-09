.class final Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;
.super Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<",
        "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 691
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 694
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 691
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    check-cast p2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 700
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->restoreTimeoutIfPaused(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 705
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 704
    invoke-virtual {p1, p2, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->pauseTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    .line 714
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
