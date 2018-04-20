.class public Lcom/google/tagmanager/ContainerOpener;
.super Ljava/lang/Object;
.source "ContainerOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ContainerOpener$ContainerFuture;,
        Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;,
        Lcom/google/tagmanager/ContainerOpener$Notifier;,
        Lcom/google/tagmanager/ContainerOpener$OpenType;,
        Lcom/google/tagmanager/ContainerOpener$WaitForFresh;,
        Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_IN_MILLIS:J = 0x7d0L

.field private static final mContainerIdNotifiersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
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

    .prologue
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

    .prologue
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
    if-nez p3, :cond_17

    const-wide/16 v0, 0x7d0

    :goto_12
    iput-wide v0, p0, Lcom/google/tagmanager/ContainerOpener;->mTimeoutInMillis:J

    .line 195
    iput-object p4, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 196
    return-void

    .line 193
    :cond_17
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_12
.end method

.method static synthetic access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ContainerOpener;
    .param p1, "x1"    # Lcom/google/tagmanager/Container;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/tagmanager/ContainerOpener;->callNotifiers(Lcom/google/tagmanager/Container;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/ContainerOpener;)Lcom/google/tagmanager/Container;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ContainerOpener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    return-object v0
.end method

.method private declared-synchronized callNotifiers(Lcom/google/tagmanager/Container;)V
    .registers 10
    .param p1, "container"    # Lcom/google/tagmanager/Container;

    .prologue
    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v6, p0, Lcom/google/tagmanager/ContainerOpener;->mHaveNotified:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v6, :cond_7

    :goto_5
    monitor-exit p0

    .line 410
    return-void

    .line 399
    :cond_7
    const/4 v5, 0x0

    .line 400
    .local v5, "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :try_start_8
    const-class v1, Lcom/google/tagmanager/ContainerOpener;

    .local v1, "-l_3_R":Ljava/lang/Object;
    const-class v6, Lcom/google/tagmanager/ContainerOpener;

    monitor-enter v6
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_20

    .line 401
    :try_start_d
    sget-object v6, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 402
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_23

    .line 403
    if-nez v5, :cond_26

    .line 408
    :cond_1c
    const/4 v6, 0x1

    :try_start_1d
    iput-boolean v6, p0, Lcom/google/tagmanager/ContainerOpener;->mHaveNotified:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_20

    goto :goto_5

    .end local v1    # "-l_3_R":Ljava/lang/Object;
    .end local v5    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :catchall_20
    move-exception v6

    monitor-exit p0

    throw v6

    .line 402
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    :catchall_23
    move-exception v2

    .local v2, "-l_4_R":Ljava/lang/Object;
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v2

    .line 404
    .end local v2    # "-l_4_R":Ljava/lang/Object;
    .restart local v5    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :cond_26
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 405
    .local v4, "notifier":Lcom/google/tagmanager/ContainerOpener$Notifier;
    invoke-interface {v4, p1}, Lcom/google/tagmanager/ContainerOpener$Notifier;->containerAvailable(Lcom/google/tagmanager/Container;)V
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_20

    goto :goto_2a
.end method

.method private open(Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 16
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    const/4 v11, 0x0

    .line 344
    iget-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v8}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 346
    .local v4, "loadStartTime":J
    const/4 v2, 0x0

    .line 347
    .local v2, "callNotifierImmediately":Z
    const-class v0, Lcom/google/tagmanager/ContainerOpener;

    .local v0, "-l_5_R":Ljava/lang/Object;
    const-class v8, Lcom/google/tagmanager/ContainerOpener;

    monitor-enter v8

    .line 348
    :try_start_d
    iget-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mTagManager:Lcom/google/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/tagmanager/TagManager;->getContainer(Ljava/lang/String;)Lcom/google/tagmanager/Container;

    move-result-object v8

    iput-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    .line 349
    iget-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    if-eqz v8, :cond_31

    .line 360
    sget-object v8, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 361
    .local v3, "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    if-eqz v3, :cond_7e

    .line 367
    iget-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 369
    monitor-exit v0

    return-void

    .line 351
    .end local v3    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :cond_31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .restart local v3    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    iget-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 354
    sget-object v8, Lcom/google/tagmanager/ContainerOpener;->mContainerIdNotifiersMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v9, p0, Lcom/google/tagmanager/ContainerOpener;->mTagManager:Lcom/google/tagmanager/TagManager;

    iget-object v10, p0, Lcom/google/tagmanager/ContainerOpener;->mContainerId:Ljava/lang/String;

    sget-object v8, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    if-eq p1, v8, :cond_75

    new-instance v8, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;

    const-wide/32 v12, 0x2932e00

    sub-long v12, v4, v12

    invoke-direct {v8, p0, v12, v13}, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;-><init>(Lcom/google/tagmanager/ContainerOpener;J)V

    :goto_57
    invoke-virtual {v9, v10, v8}, Lcom/google/tagmanager/TagManager;->openContainer(Ljava/lang/String;Lcom/google/tagmanager/Container$Callback;)Lcom/google/tagmanager/Container;

    move-result-object v8

    iput-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    .line 372
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_7b

    .line 374
    if-nez v2, :cond_80

    .line 381
    iget-wide v8, p0, Lcom/google/tagmanager/ContainerOpener;->mTimeoutInMillis:J

    iget-object v10, p0, Lcom/google/tagmanager/ContainerOpener;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v10}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-long v6, v8, v10

    .line 382
    .local v6, "remainingTimeout":J
    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/tagmanager/ContainerOpener;->setTimer(J)V

    .line 383
    return-void

    .line 355
    .end local v6    # "remainingTimeout":J
    :cond_75
    :try_start_75
    new-instance v8, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;

    invoke-direct {v8, p0}, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;-><init>(Lcom/google/tagmanager/ContainerOpener;)V

    goto :goto_57

    .line 372
    .end local v3    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :catchall_7b
    move-exception v1

    .local v1, "-l_7_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7b

    throw v1

    .line 363
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .restart local v3    # "notifiers":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ContainerOpener$Notifier;>;"
    :cond_7e
    const/4 v2, 0x1

    goto :goto_5d

    .line 375
    :cond_80
    iget-object v8, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    iget-object v9, p0, Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;

    invoke-interface {v8, v9}, Lcom/google/tagmanager/ContainerOpener$Notifier;->containerAvailable(Lcom/google/tagmanager/Container;)V

    .line 376
    iput-object v11, p0, Lcom/google/tagmanager/ContainerOpener;->mNotifier:Lcom/google/tagmanager/ContainerOpener$Notifier;

    .line 377
    return-void
.end method

.method public static openContainer(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Lcom/google/tagmanager/ContainerOpener$OpenType;Ljava/lang/Long;)Lcom/google/tagmanager/ContainerOpener$ContainerFuture;
    .registers 6
    .param p0, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "openType"    # Lcom/google/tagmanager/ContainerOpener$OpenType;
    .param p3, "timeoutInMillis"    # Ljava/lang/Long;

    .prologue
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
    .registers 8
    .param p0, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "openType"    # Lcom/google/tagmanager/ContainerOpener$OpenType;
    .param p3, "timeoutInMillis"    # Ljava/lang/Long;
    .param p4, "notifier"    # Lcom/google/tagmanager/ContainerOpener$Notifier;

    .prologue
    .line 241
    if-eqz p0, :cond_17

    .line 244
    if-eqz p1, :cond_20

    .line 247
    if-eqz p2, :cond_29

    .line 250
    if-eqz p4, :cond_32

    .line 254
    new-instance v0, Lcom/google/tagmanager/ContainerOpener;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/tagmanager/ContainerOpener;-><init>(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Ljava/lang/Long;Lcom/google/tagmanager/ContainerOpener$Notifier;)V

    .line 257
    .local v0, "containerLoader":Lcom/google/tagmanager/ContainerOpener;
    sget-object v1, Lcom/google/tagmanager/ContainerOpener$OpenType;->PREFER_FRESH:Lcom/google/tagmanager/ContainerOpener$OpenType;

    if-eq p2, v1, :cond_3b

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    :goto_13
    invoke-direct {v0, v1}, Lcom/google/tagmanager/ContainerOpener;->open(Lcom/google/tagmanager/Container$RefreshType;)V

    .line 259
    return-void

    .line 242
    .end local v0    # "containerLoader":Lcom/google/tagmanager/ContainerOpener;
    :cond_17
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "TagManager cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "ContainerId cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "OpenType cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_32
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Notifier cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    .restart local v0    # "containerLoader":Lcom/google/tagmanager/ContainerOpener;
    :cond_3b
    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    goto :goto_13
.end method

.method private setTimer(J)V
    .registers 6
    .param p1, "timeoutInMillis"    # J

    .prologue
    .line 387
    new-instance v0, Lcom/google/tagmanager/ContainerOpener$3;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ContainerOpener$3;-><init>(Lcom/google/tagmanager/ContainerOpener;)V

    .line 394
    .local v0, "timerExpires":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    const-string/jumbo v2, "ContainerOpener"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 395
    return-void
.end method
