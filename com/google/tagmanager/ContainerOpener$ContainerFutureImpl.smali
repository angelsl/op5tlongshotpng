.class Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;
.super Ljava/lang/Object;
.source "ContainerOpener.java"

# interfaces
.implements Lcom/google/tagmanager/ContainerOpener$ContainerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ContainerOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerFutureImpl"
.end annotation


# instance fields
.field private volatile mContainer:Lcom/google/tagmanager/Container;

.field private mContainerIsReady:Ljava/util/concurrent/Semaphore;

.field private volatile mHaveGotten:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ContainerOpener$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/tagmanager/ContainerOpener$1;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/tagmanager/Container;
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mHaveGotten:Z

    if-nez v0, :cond_f

    .line 324
    :try_start_4
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_12

    .line 328
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mHaveGotten:Z

    .line 329
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainer:Lcom/google/tagmanager/Container;

    return-object v0

    .line 320
    :cond_f
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainer:Lcom/google/tagmanager/Container;

    return-object v0

    .line 325
    :catch_12
    move-exception v0

    goto :goto_9
.end method

.method public isDone()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-boolean v1, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mHaveGotten:Z

    if-eqz v1, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-gtz v1, :cond_5

    goto :goto_6
.end method

.method public setContainer(Lcom/google/tagmanager/Container;)V
    .registers 3
    .param p1, "container"    # Lcom/google/tagmanager/Container;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainer:Lcom/google/tagmanager/Container;

    .line 334
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 335
    return-void
.end method
