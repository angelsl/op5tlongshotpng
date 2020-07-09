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
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 58
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 61
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 62
    .local v0, "count":I
    invoke-static {}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v2, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V

    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "Longshot.MoveTask"

    const-string v3, "cancel this check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
