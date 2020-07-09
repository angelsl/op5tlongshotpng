.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousAnimatedIntValue:I

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

.field final synthetic val$viewHeight:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 521
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iput p2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->val$viewHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iget p2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->val$viewHeight:I

    iput p2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 526
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 527
    .local v0, "currentAnimatedIntValue":I
    invoke-static {}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 533
    :goto_0
    iput v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    .line 534
    return-void
.end method
