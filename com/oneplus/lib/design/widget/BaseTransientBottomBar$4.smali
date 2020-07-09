.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->showView()V
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

    .line 416
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 419
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;"
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 421
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 425
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;"
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->pauseTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    .line 430
    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 434
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->restoreTimeoutIfPaused(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    .line 437
    :goto_0
    return-void
.end method
