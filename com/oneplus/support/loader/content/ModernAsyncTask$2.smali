.class Lcom/oneplus/support/loader/content/ModernAsyncTask$2;
.super Lcom/oneplus/support/loader/content/ModernAsyncTask$WorkerRunnable;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/loader/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/support/loader/content/ModernAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Lcom/oneplus/support/loader/content/ModernAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/loader/content/ModernAsyncTask;

    .line 131
    .local p0, "this":Lcom/oneplus/support/loader/content/ModernAsyncTask$2;, "Lcom/oneplus/support/loader/content/ModernAsyncTask$2;"
    iput-object p1, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    invoke-direct {p0}, Lcom/oneplus/support/loader/content/ModernAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/oneplus/support/loader/content/ModernAsyncTask$2;, "Lcom/oneplus/support/loader/content/ModernAsyncTask$2;"
    iget-object v0, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    invoke-static {v0}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->access$000(Lcom/oneplus/support/loader/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 139
    iget-object v2, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    iget-object v3, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 140
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v1, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    invoke-virtual {v1, v0}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    nop

    .line 147
    return-object v0

    .line 141
    :catchall_0
    move-exception v2

    .line 142
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    invoke-static {v3}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->access$100(Lcom/oneplus/support/loader/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    nop

    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    .end local p0    # "this":Lcom/oneplus/support/loader/content/ModernAsyncTask$2;, "Lcom/oneplus/support/loader/content/ModernAsyncTask$2;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .end local v2    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "result":Ljava/lang/Object;, "TResult;"
    .restart local p0    # "this":Lcom/oneplus/support/loader/content/ModernAsyncTask$2;, "Lcom/oneplus/support/loader/content/ModernAsyncTask$2;"
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$2;->this$0:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    invoke-virtual {v2, v0}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
