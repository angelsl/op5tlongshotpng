.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 212
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 216
    .local v0, "t":F
    invoke-static {}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$000()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$100(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    .line 217
    .local v1, "moveDistance":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$100(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v5}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$200(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {v2, v3, v6}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$300(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;II)V

    .line 218
    return-void
.end method
