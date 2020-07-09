.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->playScreenshotAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 782
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1400(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 786
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8$1;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 796
    :cond_0
    return-void
.end method
