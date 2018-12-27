.class Lcom/google/tagmanager/CtfeDebugInformationHandler;
.super Ljava/lang/Object;
.source "CtfeDebugInformationHandler.java"

# interfaces
.implements Lcom/google/tagmanager/DebugInformationHandler;


# static fields
.field static final CTFE_URL_PATH_PREFIX:Ljava/lang/String; = "/d?"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final NUM_EVENTS_PER_SEND:I = 0x1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private currentDebugEventNumber:I

.field private mClient:Lcom/google/tagmanager/NetworkClient;

.field private mCtfeHost:Lcom/google/tagmanager/CtfeHost;

.field private mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/CtfeHost;)V
    .registers 3
    .param p1, "host"    # Lcom/google/tagmanager/CtfeHost;

    .line 35
    new-instance v0, Lcom/google/tagmanager/NetworkClientFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/NetworkClientFactory;-><init>()V

    invoke-virtual {v0}, Lcom/google/tagmanager/NetworkClientFactory;->createNetworkClient()Lcom/google/tagmanager/NetworkClient;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/CtfeDebugInformationHandler;-><init>(Lcom/google/tagmanager/NetworkClient;Lcom/google/tagmanager/CtfeHost;)V

    .line 36
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/google/tagmanager/NetworkClient;Lcom/google/tagmanager/CtfeHost;)V
    .registers 4
    .param p1, "client"    # Lcom/google/tagmanager/NetworkClient;
    .param p2, "host"    # Lcom/google/tagmanager/CtfeHost;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    .line 30
    iput-object p1, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mClient:Lcom/google/tagmanager/NetworkClient;

    .line 31
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    .line 32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getDebugEventsAsBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method private sendDebugInformationtoCtfe()Z
    .registers 5

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mClient:Lcom/google/tagmanager/NetworkClient;

    iget-object v1, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    iget v2, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->currentDebugEventNumber:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->currentDebugEventNumber:I

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/CtfeHost;->constructCtfeDebugUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/tagmanager/CtfeDebugInformationHandler;->getDebugEventsAsBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/tagmanager/NetworkClient;->sendPostRequest(Ljava/lang/String;[B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    .line 59
    const/4 v0, 0x1

    return v0

    .line 60
    :catch_17
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CtfeDebugInformationHandler: Error sending information to server that handles debug information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public declared-synchronized receiveEventInfo(Lcom/google/analytics/containertag/proto/Debug$EventInfo;)V
    .registers 4
    .param p1, "event"    # Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    monitor-enter p0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    iget-object v1, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-static {v1, p1}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$EventInfo;Lcom/google/analytics/containertag/proto/Debug$EventInfo;)[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 43
    iget-object v0, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    iget-object v0, v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_20

    .line 44
    invoke-direct {p0}, Lcom/google/tagmanager/CtfeDebugInformationHandler;->sendDebugInformationtoCtfe()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 45
    iget-object v0, p0, Lcom/google/tagmanager/CtfeDebugInformationHandler;->mDebugEvents:Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->clear()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 48
    :cond_20
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 41
    .end local p1    # "event":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    :catchall_22
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/CtfeDebugInformationHandler;
    throw p1
.end method
