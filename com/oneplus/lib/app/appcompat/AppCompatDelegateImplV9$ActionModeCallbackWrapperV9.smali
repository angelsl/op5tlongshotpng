.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeCallbackWrapperV9"
.end annotation


# instance fields
.field private mWrapped:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
    .param p2, "wrapped"    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 1773
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1774
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->mWrapped:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 1775
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1789
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->mWrapped:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onActionItemClicked(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1779
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->mWrapped:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onCreateActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 1794
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->mWrapped:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 1795
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 1801
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    .line 1802
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    if-eqz v0, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatCallback;->onSupportActionModeFinished(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 1835
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 1836
    return-void
.end method

.method public onPrepareActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1784
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->mWrapped:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onPrepareActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
