.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;


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

    .line 448
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 450
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 454
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5$1;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_0
    return-void
.end method
