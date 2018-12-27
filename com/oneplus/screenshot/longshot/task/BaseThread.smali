.class public abstract Lcom/oneplus/screenshot/longshot/task/BaseThread;
.super Ljava/lang/Object;
.source "BaseThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseThread"


# instance fields
.field protected mDelay:J

.field private volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mDelay:J

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract onRun()V
.end method

.method public run()V
    .registers 4

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 23
    .local v0, "thisThread":Ljava/lang/Thread;
    :goto_4
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    if-ne v1, v0, :cond_16

    .line 25
    :try_start_8
    iget-wide v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mDelay:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->onRun()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_15

    .line 27
    :catch_11
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 29
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_15
    goto :goto_4

    .line 31
    :cond_16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public start()Lcom/oneplus/screenshot/longshot/task/BaseThread;
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    return-object p0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 44
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    .line 45
    .local v0, "lastThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 48
    .end local v0    # "lastThread":Ljava/lang/Thread;
    :cond_d
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 42
    :catchall_f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/oneplus/screenshot/longshot/task/BaseThread;
    throw v0
.end method
