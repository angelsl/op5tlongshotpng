.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->createLongshotAnimation()Landroid/animation/ValueAnimator;
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

    .line 844
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$9;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 853
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$9;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 854
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 847
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$9;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    return-void
.end method
