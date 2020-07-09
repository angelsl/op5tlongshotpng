.class Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;
.super Ljava/lang/Object;
.source "TargetAnimator.java"

# interfaces
.implements Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/anim/TargetAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAnimUpdate"
.end annotation


# instance fields
.field private mValue:F

.field final synthetic this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/anim/TargetAnimator;F)V
    .locals 0
    .param p2, "value"    # F

    .line 180
    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->mValue:F

    .line 181
    iput p2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->mValue:F

    .line 182
    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Ljava/util/Map$Entry;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    iget v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->mValue:F

    .line 187
    .local v0, "value":F
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    .line 188
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/screenshot/anim/TargetAnimator;->access$100(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 196
    return-void
.end method
