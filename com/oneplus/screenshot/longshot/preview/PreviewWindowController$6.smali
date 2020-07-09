.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getScrollAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

.field final synthetic val$endMoveDistance:I


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 673
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iput p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->val$endMoveDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 676
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 677
    .local v0, "t":F
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 678
    .local v1, "cureentY":I
    iget v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->val$endMoveDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sub-int/2addr v2, v1

    .line 679
    .local v2, "dy":I
    const/16 v3, 0x8

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v2, v3

    .line 680
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 682
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v4

    const/16 v5, 0xbb9

    if-gt v3, v4, :cond_2

    .line 683
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 684
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 685
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    .line 687
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    const-string v3, "Longshot.PreviewWindow"

    const-string v4, "remove overscroll timeout checker"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 694
    :cond_2
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 695
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    .line 696
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 698
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    :goto_1
    return-void
.end method
