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

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManager;-><init>()V

    .line 41
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 52
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 66
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 78
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;Lcom/google/tagmanager/HitStore;Z)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/tagmanager/HitSendingThread;
    .param p3, "store"    # Lcom/google/tagmanager/HitStore;
    .param p4, "listenForNetwork"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManager;-><init>()V

    .line 41
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 52
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 66
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 88
    iput-object p3, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    .line 89
    iput-object p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    .line 90
    iput-boolean p4, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/ServiceManagerImpl;->initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V

    .line 92
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/google/tagmanager/ServiceManagerImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .line 22
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/ServiceManagerImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .line 22
    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/tagmanager/ServiceManagerImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .line 22
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/ServiceManagerImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .line 22
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/tagmanager/ServiceManagerImpl;)Lcom/google/tagmanager/HitStore;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/ServiceManagerImpl;

    .line 22
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    return-object v0
.end method

.method static clearInstance()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    .line 83
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/google/tagmanager/ServiceManagerImpl;
    .registers 1

    .line 71
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/google/tagmanager/ServiceManagerImpl;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    .line 74
    :cond_b
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    return-object v0
.end method

.method private initializeHandler()V
    .registers 5

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

    if-lez v0, :cond_29

    .line 117
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    :cond_29
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initializeNetworkReceiver()V
    .registers 3

    .line 95
    new-instance v0, Lcom/google/tagmanager/NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NetworkReceiver;-><init>(Lcom/google/tagmanager/ServiceManager;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/NetworkReceiver;->register(Landroid/content/Context;)V

    .line 97
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    if-nez v0, :cond_f

    .line 181
    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1b

    .line 183
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 186
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    new-instance v1, Lcom/google/tagmanager/ServiceManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ServiceManagerImpl$3;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/tagmanager/HitSendingThread;->queueToThread(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    .line 192
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 179
    :catchall_1b
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw v0
.end method

.method getListener()Lcom/google/tagmanager/HitStoreStateListener;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/tagmanager/HitStore;
    .registers 4

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    if-nez v0, :cond_1d

    .line 153
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 158
    new-instance v0, Lcom/google/tagmanager/PersistentHitStore;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/PersistentHitStore;-><init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    goto :goto_1d

    .line 156
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_24

    .line 162
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->initializeHandler()V

    .line 166
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 167
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    if-eqz v0, :cond_31

    .line 168
    invoke-virtual {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    .line 172
    :cond_31
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    if-eqz v0, :cond_3c

    .line 173
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->initializeNetworkReceiver()V

    .line 175
    :cond_3c
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_40
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw v0
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/tagmanager/HitSendingThread;

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 133
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 135
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    if-nez v0, :cond_13

    .line 138
    iput-object p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 140
    :cond_13
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 131
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "thread":Lcom/google/tagmanager/HitSendingThread;
    :catchall_15
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw p1
.end method

.method declared-synchronized onRadioPowered()V
    .registers 5

    monitor-enter p0

    .line 238
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_22

    .line 242
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 245
    :cond_22
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 237
    :catchall_24
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw v0
.end method

.method public declared-synchronized setDispatchPeriod(I)V
    .registers 6
    .param p1, "dispatchPeriodInSeconds"    # I

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 197
    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 199
    iput p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_40

    .line 200
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 203
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_22

    .line 204
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 206
    :cond_22
    iput p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    .line 207
    if-lez p1, :cond_3e

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_3e

    .line 208
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_40

    .line 211
    :cond_3e
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 195
    .end local p1    # "dispatchPeriodInSeconds":I
    :catchall_40
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw p1
.end method

.method declared-synchronized updateConnectivityStatus(Z)V
    .registers 3
    .param p1, "connected"    # Z

    monitor-enter p0

    .line 233
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/tagmanager/ServiceManagerImpl;->updatePowerSaveMode(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 234
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 232
    .end local p1    # "connected":Z
    :catchall_8
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw p1
.end method

.method declared-synchronized updatePowerSaveMode(ZZ)V
    .registers 7
    .param p1, "storeIsEmpty"    # Z
    .param p2, "connected"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_59

    if-ne v0, p2, :cond_b

    .line 216
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 218
    :cond_b
    const/4 v0, 0x1

    if-nez p1, :cond_10

    if-nez p2, :cond_1b

    :cond_10
    :try_start_10
    iget v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v1, :cond_1b

    .line 219
    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 221
    :cond_1b
    if-nez p1, :cond_35

    if-eqz p2, :cond_35

    iget v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v1, :cond_35

    .line 222
    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
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

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 227
    iput-boolean p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 228
    iput-boolean p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_59

    .line 229
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 214
    .end local p1    # "storeIsEmpty":Z
    .end local p2    # "connected":Z
    :catchall_59
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ServiceManagerImpl;
    throw p1
.end method
