.class public Lcom/oneplus/support/executor/ArchTaskExecutor;
.super Lcom/oneplus/support/executor/TaskExecutor;
.source "ArchTaskExecutor.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private mDelegate:Lcom/oneplus/support/executor/TaskExecutor;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/oneplus/support/executor/ArchTaskExecutor$1;

    invoke-direct {v0}, Lcom/oneplus/support/executor/ArchTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v0, Lcom/oneplus/support/executor/ArchTaskExecutor$2;

    invoke-direct {v0}, Lcom/oneplus/support/executor/ArchTaskExecutor$2;-><init>()V

    sput-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/oneplus/support/executor/TaskExecutor;-><init>()V

    .line 60
    new-instance v0, Lcom/oneplus/support/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Lcom/oneplus/support/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;

    .line 61
    iget-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;

    iput-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    .line 62
    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 113
    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/support/executor/ArchTaskExecutor;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 71
    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    return-object v0

    .line 74
    :cond_0
    const-class v0, Lcom/oneplus/support/executor/ArchTaskExecutor;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Lcom/oneplus/support/executor/ArchTaskExecutor;

    invoke-direct {v1}, Lcom/oneplus/support/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    .line 78
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    return-object v0

    .line 78
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 108
    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 98
    iget-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    invoke-virtual {v0}, Lcom/oneplus/support/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 103
    iget-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public setDelegate(Lcom/oneplus/support/executor/TaskExecutor;)V
    .locals 1
    .param p1, "taskExecutor"    # Lcom/oneplus/support/executor/TaskExecutor;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    .line 94
    return-void
.end method
