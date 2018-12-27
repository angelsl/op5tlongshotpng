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
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    .line 15
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    .line 16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 23
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 24
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_4

    .line 26
    :cond_16
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 27
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 33
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
