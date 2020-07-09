.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousAnimatedIntValue:I

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 557
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;->mPreviousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 562
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 563
    .local v0, "currentAnimatedIntValue":I
    invoke-static {}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;->mPreviousAnimatedIntValue:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 569
    :goto_0
    iput v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;->mPreviousAnimatedIntValue:I

    .line 570
    return-void
.end method
