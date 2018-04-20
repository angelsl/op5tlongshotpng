.class Lcom/google/analytics/tracking/android/GAServiceProxy;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ServiceProxy;
.implements Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
.implements Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GAServiceProxy$3;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;
    }
.end annotation


# static fields
.field private static final FAILED_CONNECT_WAIT_TIME:J = 0xbb8L

.field private static final MAX_TRIES:I = 0x2

.field private static final RECONNECT_WAIT_TIME:J = 0x1388L

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x493e0L


# instance fields
.field private volatile client:Lcom/google/analytics/tracking/android/AnalyticsClient;

.field private clock:Lcom/google/analytics/tracking/android/Clock;

.field private volatile connectTries:I

.field private final ctx:Landroid/content/Context;

.field private volatile disconnectCheckTimer:Ljava/util/Timer;

.field private volatile failedConnectTimer:Ljava/util/Timer;

.field private forceLocalDispatch:Z

.field private final gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private idleTimeout:J

.field private volatile lastRequestTime:J

.field private pendingClearHits:Z

.field private pendingDispatch:Z

.field private pendingServiceDisconnect:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;",
            ">;"
        }
    .end annotation
.end field

.field private volatile reConnectTimer:Ljava/util/Timer;

.field private volatile state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field private store:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private final thread:Lcom/google/analytics/tracking/android/AnalyticsThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/GoogleAnalytics;)V

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/GoogleAnalytics;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;
    .param p3, "store"    # Lcom/google/analytics/tracking/android/AnalyticsStore;
    .param p4, "gaInstance"    # Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    .line 69
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    .line 75
    iput-object p3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 76
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->ctx:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 78
    iput-object p4, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 79
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    .line 86
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->lastRequestTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    return-wide v0
.end method

.method private cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 3
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    const/4 v0, 0x0

    .line 188
    if-nez p1, :cond_4

    .line 191
    :goto_3
    return-object v0

    .line 189
    :cond_4
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    goto :goto_3
.end method

.method private clearAllTimers()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    .line 196
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    .line 197
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    .line 198
    return-void
.end method

.method private declared-synchronized connectToService()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 322
    :try_start_1
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->forceLocalDispatch:Z

    if-eqz v1, :cond_10

    .line 336
    :cond_5
    const-string/jumbo v1, "client not initialized."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_57

    :goto_e
    monitor-exit p0

    .line 339
    return-void

    .line 322
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_57

    if-eq v1, v2, :cond_5

    .line 324
    :try_start_1a
    iget v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    .line 325
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v1}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    .line 326
    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 327
    new-instance v1, Ljava/util/Timer;

    const-string/jumbo v2, "Failed Connect"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    .line 328
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    new-instance v2, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 329
    const-string/jumbo v1, "connecting to Analytics service"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/AnalyticsClient;->connect()V
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_4b} :catch_4c
    .catchall {:try_start_1a .. :try_end_4b} :catchall_57

    goto :goto_e

    .line 331
    :catch_4c
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_4d
    const-string/jumbo v1, "security exception on connectToService"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_57

    goto :goto_e

    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized disconnectFromService()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    .line 346
    return-void

    .line 342
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_5

    .line 343
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 344
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsClient;->disconnect()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dispatchToStore()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->dispatch()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingDispatch:Z

    .line 298
    return-void
.end method

.method private fireReconnectAttempt()V
    .registers 5

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    .line 398
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    .line 399
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 400
    return-void
.end method

.method private declared-synchronized sendQueue()V
    .registers 8

    .prologue
    monitor-enter p0

    .line 241
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 250
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    if-nez v0, :cond_34

    .line 253
    :goto_15
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_38

    packed-switch v0, :pswitch_data_ec

    :cond_22
    :goto_22
    :pswitch_22
    monitor-exit p0

    .line 290
    return-void

    .line 242
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$2;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy$2;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_38

    monitor-exit p0

    .line 248
    return-void

    .line 251
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->clearHits()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_15

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;

    .line 257
    .local v6, "hitParams":Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending hit to store  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getWireFormatParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getHitTimeInMilliseconds()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getCommands()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/AnalyticsStore;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V

    .line 255
    .end local v6    # "hitParams":Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
    :pswitch_6f
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 262
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingDispatch:Z

    if-eqz v0, :cond_22

    .line 263
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->dispatchToStore()V

    goto :goto_22

    .line 271
    .restart local v6    # "hitParams":Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
    :cond_7f
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getWireFormatParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getHitTimeInMilliseconds()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getCommands()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/AnalyticsClient;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 276
    :goto_94
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 267
    .end local v6    # "hitParams":Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
    :pswitch_99
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 278
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->lastRequestTime:J

    goto/16 :goto_22

    .line 268
    :cond_ab
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;

    .line 269
    .restart local v6    # "hitParams":Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending hit to service   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 274
    const-string/jumbo v0, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    goto :goto_94

    .line 281
    .end local v6    # "hitParams":Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
    :pswitch_d9
    const-string/jumbo v0, "Need to reconnect"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 283
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V
    :try_end_ea
    .catchall {:try_start_3b .. :try_end_ea} :catchall_38

    goto/16 :goto_22

    .line 253
    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_99
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_d9
    .end packed-switch
.end method

.method private declared-synchronized useStore()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-eq v1, v2, :cond_2e

    .line 308
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->clearAllTimers()V

    .line 309
    const-string/jumbo v1, "falling back to local store"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v1, :cond_30

    .line 313
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    .line 314
    .local v0, "instance":Lcom/google/analytics/tracking/android/GAServiceManager;
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 315
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 317
    .end local v0    # "instance":Lcom/google/analytics/tracking/android/GAServiceManager;
    :goto_25
    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 318
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_35

    monitor-exit p0

    .line 319
    return-void

    :cond_2e
    monitor-exit p0

    .line 305
    return-void

    .line 311
    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_35

    goto :goto_25

    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public clearHits()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 125
    const-string/jumbo v0, "clearHits called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 127
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    .line 140
    :goto_1c
    return-void

    .line 129
    :pswitch_1d
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/analytics/tracking/android/AnalyticsStore;->clearHits(J)V

    .line 130
    iput-boolean v4, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    goto :goto_1c

    .line 133
    :pswitch_27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsClient;->clearHits()V

    .line 134
    iput-boolean v4, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    goto :goto_1c

    .line 127
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_27
    .end packed-switch
.end method

.method public createService()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-nez v0, :cond_11

    .line 209
    new-instance v0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    .line 210
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V

    .line 211
    return-void

    .line 207
    :cond_11
    return-void
.end method

.method createService(Lcom/google/analytics/tracking/android/AnalyticsClient;)V
    .registers 3
    .param p1, "client"    # Lcom/google/analytics/tracking/android/AnalyticsClient;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-nez v0, :cond_a

    .line 220
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    .line 221
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V

    .line 222
    return-void

    .line 218
    :cond_a
    return-void
.end method

.method public dispatch()V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingDispatch:Z

    .line 121
    :goto_10
    :pswitch_10
    return-void

    .line 113
    :pswitch_11
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->dispatchToStore()V

    goto :goto_10

    .line 111
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public declared-synchronized onConnected()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 350
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    .line 352
    const-string/jumbo v0, "Connected to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 355
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingServiceDisconnect:Z

    if-nez v0, :cond_3e

    .line 361
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V

    .line 362
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    .line 363
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    .line 364
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_46

    monitor-exit p0

    .line 365
    return-void

    .line 356
    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingServiceDisconnect:Z
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_46

    monitor-exit p0

    .line 358
    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectionFailed(ILandroid/content/Intent;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "resolution"    # Landroid/content/Intent;

    .prologue
    monitor-enter p0

    .line 386
    :try_start_1
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 387
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_4f

    :goto_2b
    monitor-exit p0

    .line 394
    return-void

    .line 388
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->fireReconnectAttempt()V
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_4f

    goto :goto_2b

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnected()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-eq v0, v1, :cond_1b

    .line 374
    const-string/jumbo v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 376
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2c

    .line 379
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_29

    :goto_19
    monitor-exit p0

    .line 382
    return-void

    .line 370
    :cond_1b
    :try_start_1b
    const-string/jumbo v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->clearAllTimers()V

    .line 372
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_29

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->fireReconnectAttempt()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    goto :goto_19
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 14
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    const-string/jumbo v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V

    .line 107
    return-void
.end method

.method setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .registers 2
    .param p1, "clock"    # Lcom/google/analytics/tracking/android/Clock;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    .line 98
    return-void
.end method

.method public declared-synchronized setForceLocalDispatch()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 144
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->forceLocalDispatch:Z

    if-nez v0, :cond_1d

    .line 148
    const-string/jumbo v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->forceLocalDispatch:Z

    .line 155
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_23

    packed-switch v0, :pswitch_data_2a

    :goto_1b
    :pswitch_1b
    monitor-exit p0

    .line 179
    return-void

    :cond_1d
    monitor-exit p0

    .line 145
    return-void

    .line 160
    :pswitch_1f
    :try_start_1f
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_1b

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :pswitch_26
    const/4 v0, 0x1

    :try_start_27
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingServiceDisconnect:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_23

    goto :goto_1b

    .line 155
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1f
        :pswitch_26
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public setIdleTimeout(J)V
    .registers 4
    .param p1, "idleTimeout"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    .line 230
    return-void
.end method
