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
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mDelay:J

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected abstract onRun()V
.end method

.method public run()V
    .locals 3

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 23
    .local v0, "thisThread":Ljava/lang/Thread;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    if-ne v1, v0, :cond_0

    .line 25
    :try_start_0
    iget-wide v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mDelay:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->onRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 29
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)Lcom/oneplus/screenshot/longshot/task/BaseThread;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    return-object p0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    .line 45
    .local v0, "lastThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mThread:Ljava/lang/Thread;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v0    # "lastThread":Ljava/lang/Thread;
    .end local p0    # "this":Lcom/oneplus/screenshot/longshot/task/BaseThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
