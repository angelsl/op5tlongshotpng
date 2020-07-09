.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    .line 764
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 770
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 772
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 774
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    .line 775
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5$1;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 800
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    .line 802
    :goto_0
    return-void
.end method
