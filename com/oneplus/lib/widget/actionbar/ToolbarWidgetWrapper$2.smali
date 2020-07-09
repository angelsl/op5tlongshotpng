.class Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;
.super Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    .line 556
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-direct {p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 557
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 574
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 566
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setVisibility(I)V

    .line 569
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setVisibility(I)V

    .line 562
    return-void
.end method
