.class Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;
.super Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


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

    .line 76
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 87
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 81
    return-void
.end method
