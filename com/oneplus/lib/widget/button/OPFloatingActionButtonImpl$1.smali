.class Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;
.super Ljava/lang/Object;
.source "OPFloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

.field final synthetic val$fromUser:Z


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    .line 170
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->val$fromUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z

    .line 187
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 180
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z

    .line 181
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v0, v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->val$fromUser:Z

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 182
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 174
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z

    .line 175
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v0, v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 176
    return-void
.end method
