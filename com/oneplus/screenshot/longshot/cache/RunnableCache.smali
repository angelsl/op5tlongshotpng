.class public Lcom/oneplus/screenshot/longshot/cache/RunnableCache;
.super Ljava/util/ArrayList;
.source "RunnableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    .line 15
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 24
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 27
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 33
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
