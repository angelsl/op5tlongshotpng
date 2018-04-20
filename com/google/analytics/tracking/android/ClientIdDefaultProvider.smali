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
    .registers 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
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
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    return p1
.end method

.method private asyncInitializeClientId()V
    .registers 3

    .prologue
    .line 130
    new-instance v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;

    const-string/jumbo v1, "client_id_fetcher"

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;-><init>(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)V

    .line 140
    .local v0, "clientIdFetcherThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method private blockingGetClientId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 74
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-eqz v3, :cond_d

    .line 89
    :goto_4
    const-string/jumbo v3, "Loaded clientId"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;

    return-object v3

    .line 75
    :cond_d
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 76
    :try_start_10
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-eqz v3, :cond_19

    .line 86
    :cond_14
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v1

    .line 77
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_19
    :try_start_19
    const-string/jumbo v3, "Waiting for clientId to load"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    .line 80
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_29
    .catchall {:try_start_1f .. :try_end_24} :catchall_16

    .line 84
    :goto_24
    :try_start_24
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-nez v3, :cond_14

    goto :goto_1f

    .line 81
    :catch_29
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while waiting for clientId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_16

    goto :goto_24
.end method

.method static dropInstance()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_0_R":Ljava/lang/Object;
    monitor-enter v0

    .line 41
    const/4 v2, 0x0

    :try_start_4
    sput-object v2, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_8
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .registers 3

    .prologue
    .line 46
    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_0_R":Ljava/lang/Object;
    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v2, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    monitor-exit v0

    return-object v2

    .line 48
    :catchall_7
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v2, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    if-eqz v2, :cond_9

    .line 35
    :goto_7
    monitor-exit v0

    .line 36
    return-void

    .line 33
    :cond_9
    new-instance v2, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    goto :goto_7

    .line 35
    :catchall_11
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private storeClientId(Ljava/lang/String;)Z
    .registers 9
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 101
    :try_start_1
    const-string/jumbo v3, "Storing clientId."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "gaClientId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 104
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_25

    .line 106
    const/4 v3, 0x1

    return v3

    .line 107
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "Error creating clientId file."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 109
    return v6

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_25
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Error writing to clientId file."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 112
    return v6
.end method


# virtual methods
.method protected generateClientId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->storeClientId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 126
    :goto_12
    return-object v0

    .line 124
    :cond_13
    const-string/jumbo v0, "0"

    goto :goto_12
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_b
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->blockingGetClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initializeClientId()Ljava/lang/String;
    .registers 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    const/4 v5, 0x0

    .line 154
    .local v5, "rslt":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "gaClientId"

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 155
    .local v3, "input":Ljava/io/FileInputStream;
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 156
    .local v0, "bytes":[B
    const/4 v7, 0x0

    const/16 v8, 0x80

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 157
    .local v4, "readLen":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_2a

    .line 163
    if-lez v4, :cond_3e

    .line 168
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_23} :catch_3c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_50

    .line 169
    .end local v5    # "rslt":Ljava/lang/String;
    .local v6, "rslt":Ljava/lang/String;
    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_68
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_65

    move-object v5, v6

    .line 178
    .end local v0    # "bytes":[B
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v4    # "readLen":I
    .end local v6    # "rslt":Ljava/lang/String;
    :goto_27
    if-eqz v5, :cond_60

    .line 181
    :goto_29
    return-object v5

    .line 160
    .restart local v0    # "bytes":[B
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "readLen":I
    .restart local v5    # "rslt":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    const-string/jumbo v7, "clientId file seems corrupted, deleting it."

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 162
    iget-object v7, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "gaClientId"

    invoke-virtual {v7, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_27

    .line 171
    .end local v0    # "bytes":[B
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v4    # "readLen":I
    :catch_3c
    move-exception v1

    .end local v5    # "rslt":Ljava/lang/String;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3d
    goto :goto_27

    .line 164
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bytes":[B
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "readLen":I
    .restart local v5    # "rslt":Ljava/lang/String;
    :cond_3e
    const-string/jumbo v7, "clientId file seems empty, deleting it."

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 166
    iget-object v7, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "gaClientId"

    invoke-virtual {v7, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_4f} :catch_3c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4f} :catch_50

    goto :goto_27

    .line 173
    .end local v0    # "bytes":[B
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v4    # "readLen":I
    :catch_50
    move-exception v2

    .line 174
    .end local v5    # "rslt":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    :goto_51
    const-string/jumbo v7, "Error reading clientId file, deleting it."

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 175
    iget-object v7, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "gaClientId"

    invoke-virtual {v7, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_27

    .line 179
    .end local v2    # "e":Ljava/io/IOException;
    :cond_60
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->generateClientId()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "rslt":Ljava/lang/String;
    goto :goto_29

    .line 173
    .end local v5    # "rslt":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "readLen":I
    .restart local v6    # "rslt":Ljava/lang/String;
    :catch_65
    move-exception v2

    move-object v5, v6

    .end local v6    # "rslt":Ljava/lang/String;
    .restart local v5    # "rslt":Ljava/lang/String;
    goto :goto_51

    .line 171
    .end local v5    # "rslt":Ljava/lang/String;
    .restart local v6    # "rslt":Ljava/lang/String;
    :catch_68
    move-exception v1

    move-object v5, v6

    .end local v6    # "rslt":Ljava/lang/String;
    .restart local v5    # "rslt":Ljava/lang/String;
    goto :goto_3d
.end method

.method public providesField(Ljava/lang/String;)Z
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
