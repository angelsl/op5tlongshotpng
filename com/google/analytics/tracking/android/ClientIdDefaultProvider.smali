.class Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
.super Ljava/lang/Object;
.source "ClientIdDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/DefaultProvider;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mClientIdLoaded:Z

.field private final mClientIdLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->asyncInitializeClientId()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    return p1
.end method

.method private asyncInitializeClientId()V
    .locals 2

    .line 130
    new-instance v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;

    const-string v1, "client_id_fetcher"

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;-><init>(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)V

    .line 140
    .local v0, "clientIdFetcherThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method private blockingGetClientId()Ljava/lang/String;
    .locals 4

    .line 74
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-nez v1, :cond_1

    .line 77
    const-string v1, "Waiting for clientId to load"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while waiting for clientId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 84
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-eqz v1, :cond_0

    .line 86
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 89
    :cond_2
    :goto_1
    const-string v0, "Loaded clientId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method static dropInstance()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 40
    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .locals 2

    .line 46
    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 31
    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private storeClientId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Storing clientId."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 104
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 110
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error writing to clientId file."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 112
    return v0

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Error creating clientId file."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 109
    return v0
.end method


# virtual methods
.method protected generateClientId()Ljava/lang/String;
    .locals 2

    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->storeClientId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v0, "0"

    .line 126
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 67
    const-string v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->blockingGetClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method initializeClientId()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 152
    const-string v0, "gaClientId"

    const/4 v1, 0x0

    .line 154
    .local v1, "rslt":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 155
    .local v2, "input":Ljava/io/FileInputStream;
    const/16 v3, 0x80

    new-array v4, v3, [B

    .line 156
    .local v4, "bytes":[B
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 157
    .local v3, "readLen":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 160
    const-string v5, "clientId file seems corrupted, deleting it."

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 162
    iget-object v5, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 163
    :cond_0
    if-gtz v3, :cond_1

    .line 164
    const-string v5, "clientId file seems empty, deleting it."

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 166
    iget-object v5, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 168
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    move-object v1, v6

    .line 169
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v3    # "readLen":I
    .end local v4    # "bytes":[B
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error reading clientId file, deleting it."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 176
    :goto_0
    nop

    .line 178
    :goto_1
    if-nez v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->generateClientId()Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_2
    return-object v1
.end method

.method public providesField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 58
    const-string v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
