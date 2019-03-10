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

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ServiceManager;-><init>()V

    .line 45
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

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
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;
    .param p3, "store"    # Lcom/google/analytics/tracking/android/AnalyticsStore;
    .param p4, "listenForNetwork"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ServiceManager;-><init>()V

    .line 45
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

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

    .line 26
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 26
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 26
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 26
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static clearInstance()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 88
    return-void
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;
    .registers 1

    .line 76
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 79
    :cond_b
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    return-object v0
.end method

.method private initializeHandler()V
    .registers 5

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

    if-lez v0, :cond_29

    .line 124
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    :cond_29
    return-void
.end method

.method private initializeNetworkReceiver()V
    .registers 3

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

    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_f

    .line 208
    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    .line 210
    monitor-exit p0

    return-void

    .line 213
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 214
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1f

    .line 215
    monitor-exit p0

    return-void

    .line 206
    :catchall_1f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw v0
.end method

.method getListener()Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;
    .registers 4

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v0, :cond_2f

    .line 168
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 173
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 174
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 175
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Dispatcher;->overrideHostUrl(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    goto :goto_2f

    .line 171
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_36

    .line 181
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeHandler()V

    .line 183
    :cond_36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    if-eqz v0, :cond_41

    .line 184
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeNetworkReceiver()V

    .line 186
    :cond_41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-object v0

    .line 166
    :catchall_45
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw v0
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-eqz v0, :cond_7

    .line 140
    monitor-exit p0

    return-void

    .line 142
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_26

    .line 145
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 146
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 147
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    .line 148
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 150
    :cond_1d
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z

    if-eqz v0, :cond_26

    .line 151
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->setForceLocalDispatch()V

    .line 152
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_28

    .line 155
    :cond_26
    monitor-exit p0

    return-void

    .line 138
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "thread":Lcom/google/analytics/tracking/android/AnalyticsThread;
    :catchall_28
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw p1
.end method

.method declared-synchronized onRadioPowered()V
    .registers 5

    monitor-enter p0

    .line 277
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_22

    .line 281
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 284
    :cond_22
    monitor-exit p0

    return-void

    .line 276
    :catchall_24
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw v0
.end method

.method declared-synchronized overrideHostUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostOverride"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v0, :cond_8

    .line 196
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    goto :goto_11

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/Dispatcher;->overrideHostUrl(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 200
    :goto_11
    monitor-exit p0

    return-void

    .line 194
    .end local p1    # "hostOverride":Ljava/lang/String;
    :catchall_13
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw p1
.end method

.method public setForceLocalDispatch()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_d

    .line 244
    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z

    .line 246
    return-void

    .line 248
    :cond_d
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_FORCE_LOCAL_DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 249
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->setForceLocalDispatch()V

    .line 250
    return-void
.end method

.method public declared-synchronized setLocalDispatchPeriod(I)V
    .registers 6
    .param p1, "dispatchPeriodInSeconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 221
    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 223
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_49

    .line 224
    monitor-exit p0

    return-void

    .line 227
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DISPATCH_PERIOD:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 229
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_2b

    .line 230
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 232
    :cond_2b
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 233
    if-lez p1, :cond_47

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_47

    .line 234
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_49

    .line 237
    :cond_47
    monitor-exit p0

    return-void

    .line 219
    .end local p1    # "dispatchPeriodInSeconds":I
    :catchall_49
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw p1
.end method

.method declared-synchronized updateConnectivityStatus(Z)V
    .registers 3
    .param p1, "connected"    # Z

    monitor-enter p0

    .line 272
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/GAServiceManager;->updatePowerSaveMode(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 273
    monitor-exit p0

    return-void

    .line 271
    .end local p1    # "connected":Z
    :catchall_8
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw p1
.end method

.method declared-synchronized updatePowerSaveMode(ZZ)V
    .registers 7
    .param p1, "storeIsEmpty"    # Z
    .param p2, "connected"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_59

    if-ne v0, p2, :cond_b

    .line 255
    monitor-exit p0

    return-void

    .line 257
    :cond_b
    const/4 v0, 0x1

    if-nez p1, :cond_10

    if-nez p2, :cond_1b

    :cond_10
    :try_start_10
    iget v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v1, :cond_1b

    .line 258
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 260
    :cond_1b
    if-nez p1, :cond_35

    if-eqz p2, :cond_35

    iget v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v1, :cond_35

    .line 261
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_47

    if-nez p2, :cond_44

    goto :goto_47

    :cond_44
    const-string v1, "terminated."

    goto :goto_49

    :cond_47
    :goto_47
    const-string v1, "initiated."

    :goto_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 266
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    .line 267
    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_59

    .line 268
    monitor-exit p0

    return-void

    .line 253
    .end local p1    # "storeIsEmpty":Z
    .end local p2    # "connected":Z
    :catchall_59
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAServiceManager;
    throw p1
.end method
