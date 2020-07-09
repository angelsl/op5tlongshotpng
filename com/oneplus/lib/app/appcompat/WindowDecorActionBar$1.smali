.class Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;
.super Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    .line 131
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTransitioning(Z)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 141
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 142
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 145
    :cond_1
    return-void
.end method
