.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->getResetAnimation()Landroid/animation/ValueAnimator;
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

    .line 252
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 256
    .local v0, "t":F
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$100(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$200(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 257
    .local v1, "moveDistance":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    int-to-float v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4, v3}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$300(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;II)V

    .line 258
    return-void
.end method
