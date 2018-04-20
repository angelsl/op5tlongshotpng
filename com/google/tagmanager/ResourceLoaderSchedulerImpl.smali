.class Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;
.super Ljava/lang/Object;
.source "ResourceLoaderSchedulerImpl.java"

# interfaces
.implements Lcom/google/tagmanager/Container$ResourceLoaderScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;,
        Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;
    }
.end annotation


# static fields
.field private static final MAY_INTERRUPT_IF_RUNNING:Z = true


# instance fields
.field private mCallback:Lcom/google/tagmanager/LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mContainerId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCtfeHost:Lcom/google/tagmanager/CtfeHost;

.field private mCtfeUrlPathAndQuery:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mResourceLoaderFactory:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "ctfeHost"    # Lcom/google/tagmanager/CtfeHost;

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;)V

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "ctfeHost"    # Lcom/google/tagmanager/CtfeHost;
    .param p4, "executorServiceFactory"    # Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;
    .param p5, "resourceLoaderFactory"    # Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p3, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    .line 57
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mContainerId:Ljava/lang/String;

    .line 59
    if-eqz p4, :cond_16

    .line 69
    :goto_b
    invoke-interface {p4}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;->createExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    if-eqz p5, :cond_1c

    .line 78
    iput-object p5, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mResourceLoaderFactory:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;

    .line 80
    :goto_15
    return-void

    .line 60
    :cond_16
    new-instance p4, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$1;

    .end local p4    # "executorServiceFactory":Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;
    invoke-direct {p4, p0}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$1;-><init>(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)V

    .restart local p4    # "executorServiceFactory":Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;
    goto :goto_b

    .line 71
    :cond_1c
    new-instance v0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$2;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$2;-><init>(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mResourceLoaderFactory:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;

    goto :goto_15
.end method

.method static synthetic access$000(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method private createResourceLoader(Ljava/lang/String;)Lcom/google/tagmanager/ResourceLoader;
    .registers 5
    .param p1, "previousVersion"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mResourceLoaderFactory:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;

    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    invoke-interface {v1, v2}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;->createResourceLoader(Lcom/google/tagmanager/CtfeHost;)Lcom/google/tagmanager/ResourceLoader;

    move-result-object v0

    .line 138
    .local v0, "resourceLoader":Lcom/google/tagmanager/ResourceLoader;
    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/ResourceLoader;->setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V

    .line 139
    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/ResourceLoader;->setCtfeURLPathAndQuery(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/ResourceLoader;->setPreviousVersion(Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method private declared-synchronized ensureNotClosed()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_7

    monitor-exit p0

    .line 134
    return-void

    .line 132
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "called method after closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 84
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->ensureNotClosed()V

    .line 85
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_12

    .line 88
    :goto_8
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mClosed:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    monitor-exit p0

    .line 90
    return-void

    .line 86
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadAfterDelay(JLjava/lang/String;)V
    .registers 7
    .param p1, "delayInMillis"    # J
    .param p3, "previousVersion"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 106
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadAfterDelay: containerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->ensureNotClosed()V

    .line 108
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v0, :cond_40

    .line 112
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4c

    .line 120
    :goto_30
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p3}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->createResourceLoader(Ljava/lang/String;)Lcom/google/tagmanager/ResourceLoader;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_49

    monitor-exit p0

    .line 122
    return-void

    .line 109
    :cond_40
    :try_start_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "callback must be set before loadAfterDelay() is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_49

    goto :goto_30
.end method

.method public declared-synchronized setCtfeURLPathAndQuery(Ljava/lang/String;)V
    .registers 3
    .param p1, "urlPathAndQuery"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->ensureNotClosed()V

    .line 127
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCtfeUrlPathAndQuery:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 128
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/google/tagmanager/LoadCallback;, "Lcom/google/tagmanager/LoadCallback<Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;>;"
    monitor-enter p0

    .line 94
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->ensureNotClosed()V

    .line 95
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 96
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
