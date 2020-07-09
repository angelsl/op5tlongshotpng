.class Lcom/oneplus/support/loader/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 495
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 496
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 501
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;

    .line 502
    .local v0, "result":Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    iget-object v1, v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    iget-object v2, v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v1, v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    iget-object v2, v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/oneplus/support/loader/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    .line 506
    nop

    .line 511
    :goto_0
    return-void
.end method
