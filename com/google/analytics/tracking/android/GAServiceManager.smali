.class public Lcom/google/analytics/tracking/android/GAServiceManager;
.super Lcom/google/analytics/tracking/android/ServiceManager;
.source "GAServiceManager.java"


# static fields
.field private static final MSG_KEY:I = 0x1

.field private static final MSG_OBJECT:Ljava/lang/Object;

.field private static instance:Lcom/google/analytics/tracking/android/GAServiceManager;


# instance fields
.field private connected:Z

.field private ctx:Landroid/content/Context;

.field private dispatchPeriodInSeconds:I

.field private handler:Landroid/os/Handler;

.field private listenForNetwork:Z

.field private listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

.field private networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

.field private pendingDispatch:Z

.field private pendingForceLocalDispatch:Z

.field private pendingHostOverride:Ljava/lang/String;

.field private store:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private storeIsEmpty:Z

.field private volatile thread:Lcom/google/analytics/tracking/android/AnalyticsThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ServiceManager;-><init>()V

    .line 45
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 46
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    .line 55
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    .line 57
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;Z)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;
    .param p3, "store"    # Lcom/google/analytics/tracking/android/AnalyticsStore;
    .param p4, "listenForNetwork"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ServiceManager;-><init>()V

    .line 45
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 46
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    .line 55
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    .line 57
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    .line 93
    iput-object p3, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 94
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 95
    iput-boolean p4, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/GAServiceManager;->initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .prologue
    .line 26
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static clearInstance()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 88
    return-void
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    if-eqz v0, :cond_7

    .line 79
    :goto_4
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    return-object v0

    .line 77
    :cond_7
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    goto :goto_4
.end method

.method private initializeHandler()V
    .registers 5

    .prologue
    .line 105
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/GAServiceManager$2;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$2;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    .line 123
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-gtz v0, :cond_17

    .line 127
    :goto_16
    return-void

    .line 124
    :cond_17
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_16
.end method

.method private initializeNetworkReceiver()V
    .registers 3

    .prologue
    .line 100
    new-instance v0, Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GANetworkReceiver;-><init>(Lcom/google/analytics/tracking/android/ServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    .line 101
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GANetworkReceiver;->register(Landroid/content/Context;)V

    .line 102
    return-void
.end method


# virtual methods
.method public declared-synchronized dispatchLocalHits()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-eqz v0, :cond_15

    .line 213
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 214
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_20

    monitor-exit p0

    .line 215
    return-void

    .line 208
    :cond_15
    :try_start_15
    const-string/jumbo v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    monitor-exit p0

    .line 210
    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getListener()Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;
    .registers 4

    .prologue
    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-eqz v0, :cond_11

    .line 179
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3f

    .line 183
    :goto_9
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    if-eqz v0, :cond_43

    .line 186
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_33

    monitor-exit p0

    return-object v0

    .line 168
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_36

    .line 173
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 174
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Dispatcher;->overrideHostUrl(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_33

    goto :goto_5

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_36
    :try_start_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3f
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeHandler()V

    goto :goto_9

    .line 183
    :cond_43
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    if-eqz v0, :cond_d

    .line 184
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeNetworkReceiver()V
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_33

    goto :goto_d
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;

    .prologue
    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_24

    if-eqz v0, :cond_13

    :cond_f
    :goto_f
    monitor-exit p0

    .line 155
    return-void

    :cond_11
    monitor-exit p0

    .line 140
    return-void

    .line 145
    :cond_13
    :try_start_13
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 146
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    if-nez v0, :cond_27

    .line 150
    :goto_19
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z

    if-eqz v0, :cond_f

    .line 151
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->setForceLocalDispatch()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    goto :goto_19
.end method

.method declared-synchronized onRadioPowered()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 277
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    .line 284
    return-void

    .line 277
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    goto :goto_5

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized overrideHostUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostOverride"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-eqz v0, :cond_10

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/Dispatcher;->overrideHostUrl(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    :goto_e
    monitor-exit p0

    .line 200
    return-void

    .line 196
    :cond_10
    :try_start_10
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_e

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setForceLocalDispatch()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-eqz v0, :cond_13

    .line 248
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_FORCE_LOCAL_DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 249
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->setForceLocalDispatch()V

    .line 250
    return-void

    .line 244
    :cond_13
    const-string/jumbo v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z

    .line 246
    return-void
.end method

.method public declared-synchronized setLocalDispatchPeriod(I)V
    .registers 6
    .param p1, "dispatchPeriodInSeconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 227
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DISPATCH_PERIOD:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 229
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-eqz v0, :cond_22

    .line 232
    :cond_12
    :goto_12
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_33

    .line 233
    if-gtz p1, :cond_36

    :cond_16
    :goto_16
    monitor-exit p0

    .line 237
    return-void

    .line 221
    :cond_18
    :try_start_18
    const-string/jumbo v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 223
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_33

    monitor-exit p0

    .line 224
    return-void

    .line 229
    :cond_22
    :try_start_22
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_33

    goto :goto_12

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_36
    :try_start_36
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_16

    .line 234
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_33

    goto :goto_16
.end method

.method declared-synchronized updateConnectivityStatus(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .prologue
    monitor-enter p0

    .line 272
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/GAServiceManager;->updatePowerSaveMode(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 273
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updatePowerSaveMode(ZZ)V
    .registers 7
    .param p1, "storeIsEmpty"    # Z
    .param p2, "connected"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-eq v0, p1, :cond_2f

    .line 257
    :cond_5
    if-eqz p1, :cond_35

    :cond_7
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-gtz v0, :cond_38

    .line 260
    :goto_b
    if-eqz p1, :cond_44

    .line 264
    :cond_d
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_5e

    :cond_1b
    const-string/jumbo v0, "initiated."

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 266
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    .line 267
    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_41

    monitor-exit p0

    .line 268
    return-void

    .line 254
    :cond_2f
    :try_start_2f
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_41

    if-ne v0, p2, :cond_5

    monitor-exit p0

    .line 255
    return-void

    .line 257
    :cond_35
    if-eqz p2, :cond_7

    goto :goto_b

    .line 258
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_41

    goto :goto_b

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_44
    if-eqz p2, :cond_d

    :try_start_46
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_d

    .line 261
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 264
    :cond_5e
    if-eqz p2, :cond_1b

    const-string/jumbo v0, "terminated."
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_41

    goto :goto_1e
.end method
