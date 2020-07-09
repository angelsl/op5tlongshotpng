.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->getFadoutAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    .line 220
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 237
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 228
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$400(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;Z)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$500(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$500(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$600(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;->onDragEnd(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 224
    return-void
.end method
