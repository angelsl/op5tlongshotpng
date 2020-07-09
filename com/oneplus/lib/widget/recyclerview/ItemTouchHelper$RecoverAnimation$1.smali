.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 2329
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;->val$this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2332
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2333
    return-void
.end method
