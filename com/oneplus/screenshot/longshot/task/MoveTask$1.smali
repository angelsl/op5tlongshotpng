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
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 49
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 53
    .local v0, "count":I
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->-get1(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-enter v2

    .line 54
    :try_start_9
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->-get0(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 55
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->-wrap0(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_22

    :goto_16
    monitor-exit v2

    .line 60
    return-void

    .line 57
    :cond_18
    :try_start_18
    const-string/jumbo v1, "Longshot.MoveTask"

    const-string/jumbo v3, "cancel this check"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_16

    .line 53
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method
