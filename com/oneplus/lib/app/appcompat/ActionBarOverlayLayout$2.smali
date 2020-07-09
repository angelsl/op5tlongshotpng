.class Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    .line 90
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->translationY(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v2, v2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 94
    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 95
    return-void
.end method
