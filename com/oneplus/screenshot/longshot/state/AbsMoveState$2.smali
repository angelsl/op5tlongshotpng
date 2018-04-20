.class Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;
.super Ljava/lang/Object;
.source "AbsMoveState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->executeMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    iget v2, v2, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    :cond_1b
    return-void
.end method
