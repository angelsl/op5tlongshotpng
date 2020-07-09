.class public Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    .line 261
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 289
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 280
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 283
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->access$101(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V

    .line 284
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->access$001(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V

    .line 275
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 276
    return-void
.end method

.method public withFinalVisibility(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;I)Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .line 267
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    iput-object p1, v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 268
    iput p2, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 269
    return-object p0
.end method
