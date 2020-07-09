.class Lcom/oneplus/lib/widget/OPEditText$2;
.super Ljava/lang/Object;
.source "OPEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPEditText;->startHightlightColorAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPEditText;

    .line 107
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText$2;->this$0:Lcom/oneplus/lib/widget/OPEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 111
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    .local v0, "value":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEditText$2;->this$0:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPEditText;->setHighlightColor(I)V

    .line 113
    return-void
.end method
