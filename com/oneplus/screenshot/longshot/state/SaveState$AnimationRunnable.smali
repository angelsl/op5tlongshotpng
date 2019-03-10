.class Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;
.super Ljava/lang/Object;
.source "SaveState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunnable"
.end annotation


# instance fields
.field private mAnim:Landroid/animation/Animator;

.field private mDecor:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4
    .param p2, "decor"    # Landroid/view/View;
    .param p3, "anim"    # Landroid/animation/Animator;

    .line 129
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mDecor:Landroid/view/View;

    .line 127
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mAnim:Landroid/animation/Animator;

    .line 130
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mDecor:Landroid/view/View;

    .line 131
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mAnim:Landroid/animation/Animator;

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 137
    return-void
.end method
