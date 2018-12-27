.class Lcom/oneplus/screenshot/longshot/task/MoveTask$1;
.super Landroid/os/Handler;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/task/MoveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 49
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 52
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 53
    .local v0, "count":I
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    # getter for: Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$000(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-enter v1

    .line 54
    :try_start_9
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    # getter for: Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z
    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 55
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v2, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V

    goto :goto_1e

    .line 57
    :cond_17
    const-string v2, "Longshot.MoveTask"

    const-string v3, "cancel this check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_1e
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v2
.end method
