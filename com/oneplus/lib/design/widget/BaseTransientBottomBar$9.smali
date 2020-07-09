.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 546
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iput p2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 554
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->val$event:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 555
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 549
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$000(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentOut(II)V

    .line 550
    return-void
.end method
