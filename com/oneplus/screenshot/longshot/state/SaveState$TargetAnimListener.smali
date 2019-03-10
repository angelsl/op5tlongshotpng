.class Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetAnimListener"
.end annotation


# instance fields
.field private mDecor:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V
    .registers 3
    .param p2, "decor"    # Landroid/view/View;

    .line 98
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 96
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    .line 99
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    .line 100
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 104
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->stop()V

    .line 107
    return-void-no-barrier
.end method
