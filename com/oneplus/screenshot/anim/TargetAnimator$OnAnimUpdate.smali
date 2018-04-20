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
    .registers 4
    .param p1, "this$0"    # Lcom/oneplus/screenshot/anim/TargetAnimator;
    .param p2, "value"    # F

    .prologue
    .line 180
    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->mValue:F

    .line 181
    iput p2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->mValue:F

    .line 182
    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Ljava/util/Map$Entry;)V
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    iget v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->mValue:F

    .line 187
    .local v1, "value":F
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    .line 188
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v0, :cond_e

    .line 189
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 195
    :cond_e
    iget-object v3, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, p1, v2, v4}, Lcom/oneplus/screenshot/anim/TargetAnimator;->-wrap0(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 196
    return-void
.end method
