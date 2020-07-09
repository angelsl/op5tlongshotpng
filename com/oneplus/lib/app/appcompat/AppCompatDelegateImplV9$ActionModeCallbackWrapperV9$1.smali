.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    .line 1802
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1824
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1810
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    .line 1811
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1814
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1816
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->removeAllViews()V

    .line 1817
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1818
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    .line 1819
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1829
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1806
    return-void
.end method
