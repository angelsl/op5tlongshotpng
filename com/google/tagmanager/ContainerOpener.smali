.class public Lcom/google/tagmanager/ContainerOpener;
.super Ljava/lang/Object;
.source "ContainerOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;,
        Lcom/google/tagmanager/ContainerOpener$WaitForFresh;,
        Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;,
        Lcom/google/tagmanager/ContainerOpener$Notifier;,
        Lcom/google/tagmanager/ContainerOpener$ContainerFuture;,
        Lcom/google/tagmanager/ContainerOpener$OpenType;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_IN_MILLIS:J = 0x7d0L

.field private static final mContainerIdNotifiersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ContainerOpener$Notifier;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private volatile mContainer:Lcom/google/tagmanager/Container;

.field private final mContainerId:Ljava/lang/String;

.field private mHaveNotified:Z

.field private mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

.field private final mTagManager:Lcom/google/tagmanager/TagManager;

.field private final mTimeoutInMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Ljava/lang/Long;Lcom/google/tagmanager/ContainerOpener$Notifier;)V
    .registers 9
    .param p1, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "timeoutInMillis"    # Ljava/lang/Long;
    .param p4, "notifier"    # Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/google/tagmanager/ContainerOpener$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ContainerOpener$1;-><init>(Lcom/google/tagmanager/ContainerOpener;)V

    iput-object v0, p0, Lcom/google/tagmanager/ContainerOpener;->mClock:Lcom/google/tagmanager/Clock;

    .line 191
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener;->mTagManager:Lcom/google/tagmanager/TagManager;

    .line 192
    iput-object p2, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    .line 193
    if-eqz p3, :cond_1b

    const-wide/16 v0, 0x1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, 0x7d0

    :goto_1d
    iput-wide v0, p0, Lcom/google/tagmanager/ContainerOpener;->mTimeoutInMillis:J

    .line 195
    iput-object p4, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ContainerOpener;
    .param p1, "x1"    # Lcom/google/tagmanager/Container;

    .line 49
    invoke-direct {p0, p1}, Lcom/google/tagmanager/ContainerOpener;->callNotifiers(Lcom/google/tagmanager/Container;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/ContainerOpener;)Lcom/google/tagmanager/Container;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ContainerOpener;

    .line 49
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    return-object v0
.end method

.method private declared-synchronized callNotifiers(Lcom/google/tagmanager/Container;)V
    .registers 6
    .param p1, "container"    # Lcom/google/tagmanager/Container;

    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ContainerOpener;->mHaveNotified:Z

    if-nez v0, :cond_32

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    const-class v1, Lcom/google/tagmanager/ContainerOpener;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_34

    .line 401
    :try_start_9
    sget-object v2, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .line 402
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2f

    .line 403
    if-eqz v0, :cond_2b

    .line 404
    :try_start_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 405
    .local v2, "notifier":Lcom/google/tagmanager/ContainerOpener$Notifier;
    invoke-interface {v2, p1}, Lcom/google/tagmanager/ContainerOpener$Notifier;->containerAvailable(Lcom/google/tagmanager/Container;)V

    .line 406
    .end local v2    # "notifier":Lcom/google/tagmanager/ContainerOpener$Notifier;
    goto :goto_1b

    .line 408
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/tagmanager/ContainerOpener;->mHaveNotified:Z
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_34

    .end local v0    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    goto :goto_32

    .line 402
    .restart local v0    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_34

    .line 410
    .end local v0    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 397
    .end local p1    # "container":Lcom/google/tagmanager/Container;
    :catchall_34
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ContainerOpener;
    throw p1
.end method

.method private open(Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 13
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .line 344
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    .local v0, "loadStartTime":J
    const/4 v2, 0x0

    .line 347
    .local v2, "callNotifierImmediately":Z
    const-class v3, Lcom/google/tagmanager/ContainerOpener;

    monitor-enter v3

    .line 348
    :try_start_a
    iget-object v4, p0, Lcom/google/tagmanager/ContainerOpener;->mTagManager:Lcom/google/tagmanager/TagManager;

    iget-object v5, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/tagmanager/TagManager;->getContainer(Ljava/lang/String;)Lcom/google/tagmanager/Container;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    .line 349
    iget-object v4, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    const/4 v5, 0x0

    if-nez v4, :cond_4b

    .line 351
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v4, "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    iget-object v6, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iput-object v5, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 354
    sget-object v6, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v6, p0, Lcom/google/tagmanager/ContainerOpener;->mTagManager:Lcom/google/tagmanager/TagManager;

    iget-object v7, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    sget-object v8, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    if-ne p1, v8, :cond_3a

    new-instance v8, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;

    invoke-direct {v8, p0}, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;-><init>(Lcom/google/tagmanager/ContainerOpener;)V

    goto :goto_44

    :cond_3a
    new-instance v8, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;

    const-wide/32 v9, 0x2932e00

    sub-long v9, v0, v9

    invoke-direct {v8, p0, v9, v10}, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;-><init>(Lcom/google/tagmanager/ContainerOpener;J)V

    :goto_44
    invoke-virtual {v6, v7, v8}, Lcom/google/tagmanager/TagManager;->openContainer(Ljava/lang/String;Lcom/google/tagmanager/Container$Callback;)Lcom/google/tagmanager/Container;

    move-result-object v6

    iput-object v6, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    .line 359
    .end local v4    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    goto :goto_58

    .line 360
    :cond_4b
    sget-object v4, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 361
    .restart local v4    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    if-nez v4, :cond_79

    .line 363
    const/4 v2, 0x1

    .line 372
    .end local v4    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :goto_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_82

    .line 374
    if-eqz v2, :cond_65

    .line 375
    iget-object v3, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    iget-object v4, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    invoke-interface {v3, v4}, Lcom/google/tagmanager/ContainerOpener$Notifier;->containerAvailable(Lcom/google/tagmanager/Container;)V

    .line 376
    iput-object v5, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 377
    return-void

    .line 381
    :cond_65
    iget-wide v3, p0, Lcom/google/tagmanager/ContainerOpener;->mTimeoutInMillis:J

    iget-object v5, p0, Lcom/google/tagmanager/ContainerOpener;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v5}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    sub-long/2addr v3, v5

    .line 382
    .local v3, "remainingTimeout":J
    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/google/tagmanager/ContainerOpener;->setTimer(J)V

    .line 383
    return-void

    .line 367
    .end local v3    # "remainingTimeout":J
    .restart local v4    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :cond_79
    :try_start_79
    iget-object v6, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iput-object v5, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 369
    monitor-exit v3

    return-void

    .line 372
    .end local v4    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :catchall_82
    move-exception v4

    monitor-exit v3
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_82

    throw v4
.end method

.method public static openContainer(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Lcom/google/tagmanager/ContainerOpener$OpenType;Ljava/lang/Long;)Lcom/google/tagmanager/ContainerOpener$ContainerFuture;
    .registers 6
    .param p0, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "openType"    # Lcom/google/tagmanager/ContainerOpener$OpenType;
    .param p3, "timeoutInMillis"    # Ljava/lang/Long;

    .line 302
    new-instance v0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;-><init>(Lcom/google/tagmanager/ContainerOpener$1;)V

    .line 303
    .local v0, "future":Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;
    new-instance v1, Lcom/google/tagmanager/ContainerOpener$2;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/ContainerOpener$2;-><init>(Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;)V

    invoke-static {p0, p1, p2, p3, v1}, Lcom/google/tagmanager/ContainerOpener;->openContainer(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Lcom/google/tagmanager/ContainerOpener$OpenType;Ljava/lang/Long;Lcom/google/tagmanager/ContainerOpener$Notifier;)V

    .line 309
    return-object v0
.end method

.method public static openContainer(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Lcom/google/tagmanager/ContainerOpener$OpenType;Ljava/lang/Long;Lcom/google/tagmanager/ContainerOpener$Notifier;)V
    .registers 7
    .param p0, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "openType"    # Lcom/google/tagmanager/ContainerOpener$OpenType;
    .param p3, "timeoutInMillis"    # Ljava/lang/Long;
    .param p4, "notifier"    # Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 241
    if-eqz p0, :cond_32

    .line 244
    if-eqz p1, :cond_2a

    .line 247
    if-eqz p2, :cond_22

    .line 250
    if-eqz p4, :cond_1a

    .line 254
    new-instance v0, Lcom/google/tagmanager/ContainerOpener;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/tagmanager/ContainerOpener;-><init>(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Ljava/lang/Long;Lcom/google/tagmanager/ContainerOpener$Notifier;)V

    .line 257
    .local v0, "containerLoader":Lcom/google/tagmanager/ContainerOpener;
    sget-object v1, Lcom/google/tagmanager/ContainerOpener$OpenType;->PREFER_FRESH:Lcom/google/tagmanager/ContainerOpener$OpenType;

    if-ne p2, v1, :cond_14

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    goto :goto_16

    :cond_14
    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    :goto_16
    invoke-direct {v0, v1}, Lcom/google/tagmanager/ContainerOpener;->open(Lcom/google/tagmanager/Container$RefreshType;)V

    .line 259
    return-void

    .line 251
    .end local v0    # "containerLoader":Lcom/google/tagmanager/ContainerOpener;
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Notifier cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OpenType cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContainerId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TagManager cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setTimer(J)V
    .registers 6
    .param p1, "timeoutInMillis"    # J

    .line 387
    new-instance v0, Lcom/google/tagmanager/ContainerOpener$3;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ContainerOpener$3;-><init>(Lcom/google/tagmanager/ContainerOpener;)V

    .line 394
    .local v0, "timerExpires":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    const-string v2, "ContainerOpener"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 395
    return-void
.end method
