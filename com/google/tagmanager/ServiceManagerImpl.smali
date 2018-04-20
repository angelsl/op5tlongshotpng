.class Lcom/google/tagmanager/ServiceManagerImpl;
.super Lcom/google/tagmanager/ServiceManager;
.source "ServiceManagerImpl.java"


# static fields
.field private static final MSG_KEY:I = 0x1

.field private static final MSG_OBJECT:Ljava/lang/Object;

.field private static instance:Lcom/google/tagmanager/ServiceManagerImpl;


# instance fields
.field private connected:Z

.field private ctx:Landroid/content/Context;

.field private dispatchPeriodInSeconds:I

.field private handler:Landroid/os/Handler;

.field private listenForNetwork:Z

.field private listener:Lcom/google/tagmanager/HitStoreStateListener;

.field private networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

.field private pendingDispatch:Z

.field private readyToDispatch:Z

.field private store:Lcom/google/tagmanager/HitStore;

.field private storeIsEmpty:Z

.field private volatile thread:Lcom/google/tagmanager/HitSendingThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManager;-><init>()V

    .line 41
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    .line 42
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    .line 43
    iput-boolean v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 46
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 52
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 66
    iput-boolean v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;Lcom/google/tagmanager/HitStore;Z)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/tagmanager/HitSendingThread;
    .param p3, "store"    # Lcom/google/tagmanager/HitStore;
    .param p4, "listenForNetwork"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManager;-><init>()V

    .line 41
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    .line 42
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    .line 43
    iput-boolean v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 46
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 52
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 66
    iput-boolean v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 88
    iput-object p3, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    .line 89
    iput-object p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    .line 90
    iput-boolean p4, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/ServiceManagerImpl;->initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/ServiceManagerImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/ServiceManagerImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .prologue
    .line 22
    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/tagmanager/ServiceManagerImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/ServiceManagerImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/tagmanager/ServiceManagerImpl;)Lcom/google/tagmanager/HitStore;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    return-object v0
.end method

.method static clearInstance()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/google/tagmanager/ServiceManagerImpl;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    if-eqz v0, :cond_7

    .line 74
    :goto_4
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    return-object v0

    .line 72
    :cond_7
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/google/tagmanager/ServiceManagerImpl;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    goto :goto_4
.end method

.method private initializeHandler()V
    .registers 5

    .prologue
    .line 100
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/tagmanager/ServiceManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/google/tagmanager/ServiceManagerImpl$2;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    .line 116
    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-gtz v0, :cond_17

    .line 120
    :goto_16
    return-void

    .line 117
    :cond_17
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_16
.end method

.method private initializeNetworkReceiver()V
    .registers 3

    .prologue
    .line 95
    new-instance v0, Lcom/google/tagmanager/NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NetworkReceiver;-><init>(Lcom/google/tagmanager/ServiceManager;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/NetworkReceiver;->register(Landroid/content/Context;)V

    .line 97
    return-void
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 180
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    if-eqz v0, :cond_11

    .line 186
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    new-instance v1, Lcom/google/tagmanager/ServiceManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ServiceManagerImpl$3;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/tagmanager/HitSendingThread;->queueToThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1c

    monitor-exit p0

    .line 192
    return-void

    .line 181
    :cond_11
    :try_start_11
    const-string/jumbo v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    .line 183
    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getListener()Lcom/google/tagmanager/HitStoreStateListener;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/tagmanager/HitStore;
    .registers 4

    .prologue
    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    if-eqz v0, :cond_18

    .line 160
    :goto_5
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_34

    .line 166
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 167
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    if-nez v0, :cond_38

    .line 172
    :goto_10
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    if-eqz v0, :cond_3f

    .line 175
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_28

    monitor-exit p0

    return-object v0

    .line 153
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 158
    new-instance v0, Lcom/google/tagmanager/PersistentHitStore;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/PersistentHitStore;-><init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_5

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_34
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->initializeHandler()V

    goto :goto_9

    .line 168
    :cond_38
    invoke-virtual {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    goto :goto_10

    .line 172
    :cond_3f
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    if-eqz v0, :cond_14

    .line 173
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->initializeNetworkReceiver()V
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_28

    goto :goto_14
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/tagmanager/HitSendingThread;

    .prologue
    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    if-eqz v0, :cond_13

    :goto_f
    monitor-exit p0

    .line 140
    return-void

    :cond_11
    monitor-exit p0

    .line 133
    return-void

    .line 138
    :cond_13
    :try_start_13
    iput-object p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_16

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onRadioPowered()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 238
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    .line 245
    return-void

    .line 238
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

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

.method public declared-synchronized setDispatchPeriod(I)V
    .registers 6
    .param p1, "dispatchPeriodInSeconds"    # I

    .prologue
    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 203
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-eqz v0, :cond_19

    .line 206
    :cond_9
    :goto_9
    iput p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2a

    .line 207
    if-gtz p1, :cond_2d

    :cond_d
    :goto_d
    monitor-exit p0

    .line 211
    return-void

    .line 197
    :cond_f
    :try_start_f
    const-string/jumbo v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 199
    iput p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_2a

    monitor-exit p0

    .line 200
    return-void

    .line 203
    :cond_19
    :try_start_19
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2a

    goto :goto_9

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_2d
    :try_start_2d
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 208
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_2a

    goto :goto_d
.end method

.method declared-synchronized updateConnectivityStatus(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .prologue
    monitor-enter p0

    .line 233
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/tagmanager/ServiceManagerImpl;->updatePowerSaveMode(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 234
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

    .line 215
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-eq v0, p1, :cond_2f

    .line 218
    :cond_5
    if-eqz p1, :cond_35

    :cond_7
    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-gtz v0, :cond_38

    .line 221
    :goto_b
    if-eqz p1, :cond_44

    .line 225
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

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 227
    iput-boolean p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 228
    iput-boolean p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_41

    monitor-exit p0

    .line 229
    return-void

    .line 215
    :cond_2f
    :try_start_2f
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_41

    if-ne v0, p2, :cond_5

    monitor-exit p0

    .line 216
    return-void

    .line 218
    :cond_35
    if-eqz p2, :cond_7

    goto :goto_b

    .line 219
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_41

    goto :goto_b

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_44
    if-eqz p2, :cond_d

    :try_start_46
    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_d

    .line 222
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 225
    :cond_5e
    if-eqz p2, :cond_1b

    const-string/jumbo v0, "terminated."
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_41

    goto :goto_1e
.end method
