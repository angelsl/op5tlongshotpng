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
    .locals 0
    .param p2, "decor"    # Landroid/view/View;
    .param p3, "anim"    # Landroid/animation/Animator;

    .line 153
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mDecor:Landroid/view/View;

    .line 151
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mAnim:Landroid/animation/Animator;

    .line 154
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mDecor:Landroid/view/View;

    .line 155
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mAnim:Landroid/animation/Animator;

    .line 156
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;->mAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 161
    return-void
.end method
