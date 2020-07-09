.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationOutInputTimeField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 336
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 356
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 345
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    .line 350
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z

    .line 351
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 339
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showInputBlock(Z)V

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z

    .line 341
    return-void
.end method
