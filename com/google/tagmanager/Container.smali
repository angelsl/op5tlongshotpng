.class public Lcom/google/tagmanager/Container;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Container$4;,
        Lcom/google/tagmanager/Container$Callback;,
        Lcom/google/tagmanager/Container$FunctionCallMacroHandler;,
        Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;,
        Lcom/google/tagmanager/Container$FunctionCallTagHandler;,
        Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;,
        Lcom/google/tagmanager/Container$RefreshFailure;,
        Lcom/google/tagmanager/Container$RefreshType;,
        Lcom/google/tagmanager/Container$ResourceLoaderScheduler;,
        Lcom/google/tagmanager/Container$ResourceStorage;
    }
.end annotation


# static fields
.field static final ENABLE_CONTAINER_DEBUG_MODE:Z = false

.field static final MAX_NUMBER_OF_TOKENS:I = 0x1e
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final MINIMUM_REFRESH_PERIOD_BURST_MODE_MS:I = 0x1388

.field static final MINIMUM_REFRESH_PERIOD_MS:J = 0xdbba0L

.field static final REFRESH_PERIOD_ON_FAILURE_MS:J = 0x36ee80L

.field static final REFRESH_PERIOD_ON_SUCCESS_MS:J = 0x2932e00L


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContainerId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCtfeHost:Lcom/google/tagmanager/CtfeHost;

.field private volatile mCtfeServerAddress:Ljava/lang/String;

.field private volatile mCtfeUrlPathAndQuery:Ljava/lang/String;

.field mDiskLoadCallback:Lcom/google/tagmanager/LoadCallback;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionCallMacroHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Container$FunctionCallMacroHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionCallTagHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Container$FunctionCallTagHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

.field private volatile mLastRefreshMethodCalledTime:J

.field private volatile mLastRefreshTime:J

.field mNetworkLoadCallback:Lcom/google/tagmanager/LoadCallback;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

.field private volatile mNumTokens:I

.field private volatile mResourceFormatVersion:I

.field private mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

.field private volatile mResourceVersion:Ljava/lang/String;

.field private mRuntime:Lcom/google/tagmanager/Runtime;

.field private final mTagManager:Lcom/google/tagmanager/TagManager;

.field private mUserCallback:Lcom/google/tagmanager/Container$Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "tagManager"    # Lcom/google/tagmanager/TagManager;

    .prologue
    .line 208
    new-instance v0, Lcom/google/tagmanager/ResourceStorageImpl;

    invoke-direct {v0, p1, p2}, Lcom/google/tagmanager/ResourceStorageImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/tagmanager/Container;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;Lcom/google/tagmanager/Container$ResourceStorage;)V

    .line 210
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;Lcom/google/tagmanager/Container$ResourceStorage;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p4, "resourceStorage"    # Lcom/google/tagmanager/Container$ResourceStorage;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/Container;->mResourceFormatVersion:I

    .line 215
    new-instance v0, Lcom/google/tagmanager/CtfeHost;

    invoke-direct {v0}, Lcom/google/tagmanager/CtfeHost;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    .line 216
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    .line 219
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 220
    iput-object p4, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    .line 221
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallMacroHandlers:Ljava/util/Map;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallTagHandlers:Ljava/util/Map;

    .line 224
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->createInitialContainer()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->callRefreshBegin(Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->setSupplementals([Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/tagmanager/Container;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/tagmanager/Container;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/tagmanager/Container;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/google/tagmanager/Container;->mLastRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->callRefreshSuccess(Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/tagmanager/Container$RefreshType;
    .param p2, "x2"    # Lcom/google/tagmanager/Container$RefreshFailure;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/Container;->callRefreshFailure(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/tagmanager/Container;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isContainerPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->saveResourceToDisk(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V

    return-void
.end method

.method private declared-synchronized callRefreshBegin(Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 3
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    .line 455
    return-void

    .line 453
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Container$Callback;->containerRefreshBegin(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized callRefreshFailure(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .registers 4
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;
    .param p2, "refreshFailure"    # Lcom/google/tagmanager/Container$RefreshFailure;

    .prologue
    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    .line 449
    return-void

    .line 447
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/tagmanager/Container$Callback;->containerRefreshFailure(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized callRefreshSuccess(Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 4
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    monitor-enter p0

    .line 438
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "calling containerRefreshSuccess("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): mUserCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_31

    if-nez v0, :cond_2b

    :goto_29
    monitor-exit p0

    .line 442
    return-void

    .line 440
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Container$Callback;->containerRefreshSuccess(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_31

    goto :goto_29

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createInitialContainer()V
    .registers 7

    .prologue
    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tagmanager/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "containerFile":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v3, v0}, Lcom/google/tagmanager/Container$ResourceStorage;->loadResourceFromContainerAsset(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v2

    .line 736
    .local v2, "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    if-nez v2, :cond_3e

    .line 740
    iget-object v3, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/tagmanager/Container$ResourceStorage;->loadExpandedResourceFromJsonAsset(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1

    .line 742
    .local v1, "expandedResource":Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    if-eqz v1, :cond_42

    .line 746
    :goto_3a
    invoke-direct {p0, v1}, Lcom/google/tagmanager/Container;->initEvaluatorsWithExpandedResource(Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V

    .line 747
    return-void

    .line 737
    .end local v1    # "expandedResource":Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :cond_3e
    invoke-direct {p0, v2}, Lcom/google/tagmanager/Container;->initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    .line 738
    return-void

    .line 743
    .restart local v1    # "expandedResource":Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :cond_42
    const-string/jumbo v3, "No default container found; creating an empty container."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1

    goto :goto_3a
.end method

.method private declared-synchronized getRuntime()Lcom/google/tagmanager/Runtime;
    .registers 2

    .prologue
    monitor-enter p0

    .line 702
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mRuntime:Lcom/google/tagmanager/Runtime;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V
    .registers 6
    .param p1, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, "expandedResource":Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :try_start_1
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->getExpandedResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :try_end_4
    .catch Lcom/google/tagmanager/ResourceUtil$InvalidResourceException; {:try_start_1 .. :try_end_4} :catch_9

    move-result-object v1

    .line 655
    invoke-direct {p0, v1}, Lcom/google/tagmanager/Container;->initEvaluatorsWithExpandedResource(Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V

    .line 656
    return-void

    .line 651
    :catch_9
    move-exception v0

    .line 652
    .local v0, "err":Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not loading resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " because it is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method private initEvaluatorsWithExpandedResource(Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V
    .registers 10
    .param p1, "expandedResource"    # Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    .prologue
    const/4 v7, 0x0

    .line 669
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getResourceFormatVersion()I

    move-result v1

    iput v1, p0, Lcom/google/tagmanager/Container;->mResourceFormatVersion:I

    .line 671
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/Container;->createEventInfoDistributor(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoDistributor;

    move-result-object v6

    .line 672
    .local v6, "eventInfoDistributor":Lcom/google/tagmanager/EventInfoDistributor;
    new-instance v0, Lcom/google/tagmanager/Runtime;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/tagmanager/TagManager;->getDataLayer()Lcom/google/tagmanager/DataLayer;

    move-result-object v3

    new-instance v4, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;

    invoke-direct {v4, p0, v7}, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$1;)V

    new-instance v5, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;

    invoke-direct {v5, p0, v7}, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$1;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V

    .line 675
    .local v0, "runtime":Lcom/google/tagmanager/Runtime;
    invoke-direct {p0, v0}, Lcom/google/tagmanager/Container;->setRuntime(Lcom/google/tagmanager/Runtime;)V

    .line 676
    return-void
.end method

.method private isContainerPreview()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 726
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    .line 727
    .local v0, "previewManager":Lcom/google/tagmanager/PreviewManager;
    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v2

    sget-object v3, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v2, v3, :cond_1a

    :cond_d
    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :goto_19
    return v1

    :cond_1a
    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v2

    sget-object v3, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v2, v3, :cond_d

    goto :goto_19

    :cond_23
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private isDefaultContainerRefreshMode()Z
    .registers 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/tagmanager/TagManager;->getRefreshMode()Lcom/google/tagmanager/TagManager$RefreshMode;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/TagManager$RefreshMode;->DEFAULT_CONTAINER:Lcom/google/tagmanager/TagManager$RefreshMode;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private declared-synchronized saveResourceToDisk(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    .registers 6
    .param p1, "supplementedResource"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .prologue
    monitor-enter p0

    .line 638
    :try_start_1
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-nez v1, :cond_7

    :goto_5
    monitor-exit p0

    .line 645
    return-void

    .line 639
    :cond_7
    :try_start_7
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>()V

    .line 640
    .local v0, "resourceWithMetadata":Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    invoke-virtual {p0}, Lcom/google/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 641
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v1, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 642
    iput-object p1, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 643
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Container$ResourceStorage;->saveResourceToDiskInBackground(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_5

    .end local v0    # "resourceWithMetadata":Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setRuntime(Lcom/google/tagmanager/Runtime;)V
    .registers 3
    .param p1, "runtime"    # Lcom/google/tagmanager/Runtime;

    .prologue
    monitor-enter p0

    .line 698
    :try_start_1
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mRuntime:Lcom/google/tagmanager/Runtime;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 699
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSupplementals([Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .registers 8
    .param p1, "supplementals"    # [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .prologue
    .line 660
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v4, "supplementalList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Serving$Supplemental;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-lt v1, v2, :cond_12

    .line 665
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/tagmanager/Runtime;->setSupplementals(Ljava/util/List;)V

    .line 666
    return-void

    .line 661
    :cond_12
    aget-object v3, p1, v1

    .line 662
    .local v3, "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private useAvailableToken(J)Z
    .registers 14
    .param p1, "currentTime"    # J

    .prologue
    const/16 v10, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 754
    iget-wide v6, p0, Lcom/google/tagmanager/Container;->mLastRefreshMethodCalledTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_13

    .line 755
    iget v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    .line 756
    return v4

    .line 759
    :cond_13
    iget-wide v6, p0, Lcom/google/tagmanager/Container;->mLastRefreshMethodCalledTime:J

    sub-long v2, p1, v6

    .line 760
    .local v2, "timeElapsed":J
    const-wide/16 v6, 0x1388

    cmp-long v1, v2, v6

    if-ltz v1, :cond_21

    move v1, v4

    :goto_1e
    if-nez v1, :cond_23

    .line 761
    return v5

    :cond_21
    move v1, v5

    .line 760
    goto :goto_1e

    .line 763
    :cond_23
    iget v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    if-lt v1, v10, :cond_2c

    .line 768
    :goto_27
    iget v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    if-gtz v1, :cond_41

    .line 773
    return v5

    .line 764
    :cond_2c
    const-wide/32 v6, 0xdbba0

    div-long v6, v2, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 765
    .local v0, "numAddedTokens":I
    iget v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    add-int/2addr v1, v0

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    goto :goto_27

    .line 769
    .end local v0    # "numAddedTokens":I
    :cond_41
    iget v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    .line 770
    return v4
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    if-nez v1, :cond_1e

    .line 358
    :goto_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    .line 359
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    if-nez v1, :cond_44

    .line 362
    :goto_c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    .line 364
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/TagManager;->removeContainer(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_24
    .catchall {:try_start_1 .. :try_end_19} :catchall_41

    .line 368
    :goto_19
    const/4 v1, 0x0

    :try_start_1a
    iput-object v1, p0, Lcom/google/tagmanager/Container;->mRuntime:Lcom/google/tagmanager/Runtime;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_41

    monitor-exit p0

    .line 369
    return-void

    .line 356
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    invoke-interface {v1}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_41

    goto :goto_5

    .line 365
    :catch_24
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling close() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_41

    goto :goto_19

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1

    .line 360
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v1}, Lcom/google/tagmanager/Container$ResourceStorage;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_24
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    goto :goto_c
.end method

.method createEventInfoDistributor(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoDistributor;
    .registers 4
    .param p1, "resourceVersion"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 688
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/PreviewManager$PreviewMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 693
    new-instance v0, Lcom/google/tagmanager/NoopEventInfoDistributor;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopEventInfoDistributor;-><init>()V

    return-object v0
.end method

.method evaluateTags(Ljava/lang/String;)V
    .registers 3
    .param p1, "currentEventName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Runtime;->evaluateTags(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v1

    .line 240
    .local v1, "runtime":Lcom/google/tagmanager/Runtime;
    if-eqz v1, :cond_19

    .line 245
    :try_start_6
    invoke-virtual {v1, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_28

    move-result v2

    return v2

    .line 241
    :cond_19
    const-string/jumbo v2, "getBoolean called for closed container."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 246
    :catch_28
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getBoolean() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public getContainerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getCtfeUrlPathAndQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v1

    .line 259
    .local v1, "runtime":Lcom/google/tagmanager/Runtime;
    if-eqz v1, :cond_19

    .line 264
    :try_start_6
    invoke-virtual {v1, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToDouble(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_28

    move-result-wide v2

    return-wide v2

    .line 260
    :cond_19
    const-string/jumbo v2, "getDouble called for closed container."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultDouble()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 265
    :catch_28
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getDouble() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultDouble()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public declared-synchronized getFunctionCallMacroHandler(Ljava/lang/String;)Lcom/google/tagmanager/Container$FunctionCallMacroHandler;
    .registers 3
    .param p1, "customMacroName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallMacroHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container$FunctionCallMacroHandler;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFunctionCallTagHandler(Ljava/lang/String;)Lcom/google/tagmanager/Container$FunctionCallTagHandler;
    .registers 3
    .param p1, "customTagName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 434
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallTagHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container$FunctionCallTagHandler;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastRefreshTime()J
    .registers 3

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshTime:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v1

    .line 278
    .local v1, "runtime":Lcom/google/tagmanager/Runtime;
    if-eqz v1, :cond_19

    .line 283
    :try_start_6
    invoke-virtual {v1, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToInt64(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_28

    move-result-wide v2

    return-wide v2

    .line 279
    :cond_19
    const-string/jumbo v2, "getLong called for closed container."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultInt64()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 284
    :catch_28
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getLong() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultInt64()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method getResourceVersion()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v1

    .line 297
    .local v1, "runtime":Lcom/google/tagmanager/Runtime;
    if-eqz v1, :cond_15

    .line 302
    :try_start_6
    invoke-virtual {v1, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_20

    move-result-object v2

    return-object v2

    .line 298
    :cond_15
    const-string/jumbo v2, "getString called for closed container."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 303
    :catch_20
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getString() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isDefault()Z
    .registers 5

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method load(Lcom/google/tagmanager/Container$Callback;)V
    .registers 7
    .param p1, "callback"    # Lcom/google/tagmanager/Container$Callback;

    .prologue
    .line 385
    new-instance v0, Lcom/google/tagmanager/Container$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/Container$1;-><init>(Lcom/google/tagmanager/Container;)V

    .line 391
    .local v0, "systemClock":Lcom/google/tagmanager/Clock;
    new-instance v1, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/tagmanager/Container;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/tagmanager/Container;->load(Lcom/google/tagmanager/Container$Callback;Lcom/google/tagmanager/Container$ResourceLoaderScheduler;Lcom/google/tagmanager/Clock;)V

    .line 393
    return-void
.end method

.method declared-synchronized load(Lcom/google/tagmanager/Container$Callback;Lcom/google/tagmanager/Container$ResourceLoaderScheduler;Lcom/google/tagmanager/Clock;)V
    .registers 7
    .param p1, "callback"    # Lcom/google/tagmanager/Container$Callback;
    .param p2, "scheduler"    # Lcom/google/tagmanager/Container$ResourceLoaderScheduler;
    .param p3, "clock"    # Lcom/google/tagmanager/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 465
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mDiskLoadCallback:Lcom/google/tagmanager/LoadCallback;

    if-nez v0, :cond_3c

    .line 469
    iput-object p3, p0, Lcom/google/tagmanager/Container;->mClock:Lcom/google/tagmanager/Clock;

    .line 470
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    .line 471
    new-instance v0, Lcom/google/tagmanager/Container$2;

    invoke-direct {v0, p0, p3}, Lcom/google/tagmanager/Container$2;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Clock;)V

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mDiskLoadCallback:Lcom/google/tagmanager/LoadCallback;

    .line 532
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isDefaultContainerRefreshMode()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 537
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mDiskLoadCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/Container$ResourceStorage;->setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V

    .line 540
    new-instance v0, Lcom/google/tagmanager/Container$3;

    invoke-direct {v0, p0, p3}, Lcom/google/tagmanager/Container$3;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Clock;)V

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadCallback:Lcom/google/tagmanager/LoadCallback;

    .line 610
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {p2, v0}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V

    .line 612
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isContainerPreview()Z

    move-result v0

    if-nez v0, :cond_63

    .line 616
    :goto_2f
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeServerAddress:Ljava/lang/String;

    if-nez v0, :cond_73

    .line 619
    :goto_33
    iput-object p2, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    .line 622
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v0}, Lcom/google/tagmanager/Container$ResourceStorage;->loadResourceFromDiskInBackground()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_58

    monitor-exit p0

    .line 623
    return-void

    .line 466
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Container already loaded: container ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 533
    :cond_5b
    :try_start_5b
    const-string/jumbo v0, "Container is in DEFAULT_CONTAINER mode. Use default container."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_58

    monitor-exit p0

    .line 534
    return-void

    .line 613
    :cond_63
    :try_start_63
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getCTFEUrlPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->setCtfeURLPathAndQuery(Ljava/lang/String;)V

    goto :goto_2f

    .line 617
    :cond_73
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mCtfeServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/CtfeHost;->setCtfeServerAddress(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_58

    goto :goto_33
.end method

.method declared-synchronized loadAfterDelay(J)V
    .registers 6
    .param p1, "delay"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 632
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    .line 635
    return-void

    .line 632
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isDefaultContainerRefreshMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 633
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->loadAfterDelay(JLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refresh()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 326
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5c

    move-result-object v3

    if-eqz v3, :cond_21

    .line 331
    :try_start_7
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isDefaultContainerRefreshMode()Z

    move-result v3

    if-nez v3, :cond_29

    .line 336
    iget-object v3, p0, Lcom/google/tagmanager/Container;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v3}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 337
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/Container;->useAvailableToken(J)Z

    move-result v3

    if-nez v3, :cond_31

    .line 342
    const-string/jumbo v3, "Container refresh was called too often. Ignored."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_3f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5c

    .end local v0    # "currentTime":J
    :goto_1f
    monitor-exit p0

    .line 347
    return-void

    .line 327
    :cond_21
    :try_start_21
    const-string/jumbo v3, "refresh called for closed container"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_5c

    monitor-exit p0

    .line 328
    return-void

    .line 332
    :cond_29
    :try_start_29
    const-string/jumbo v3, "Container is in DEFAULT_CONTAINER mode. Refresh request is ignored."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_3f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_5c

    monitor-exit p0

    .line 333
    return-void

    .line 338
    .restart local v0    # "currentTime":J
    :cond_31
    :try_start_31
    const-string/jumbo v3, "Container refresh requested"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 339
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 340
    iput-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshMethodCalledTime:J
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_3f
    .catchall {:try_start_31 .. :try_end_3e} :catchall_5c

    goto :goto_1f

    .line 344
    .end local v0    # "currentTime":J
    :catch_3f
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/Exception;
    :try_start_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling refresh() throws an exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_5c

    goto :goto_1f

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized registerFunctionCallMacroHandler(Ljava/lang/String;Lcom/google/tagmanager/Container$FunctionCallMacroHandler;)V
    .registers 4
    .param p1, "customMacroName"    # Ljava/lang/String;
    .param p2, "customMacroHandler"    # Lcom/google/tagmanager/Container$FunctionCallMacroHandler;

    .prologue
    monitor-enter p0

    .line 406
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallMacroHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 407
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerFunctionCallTagHandler(Ljava/lang/String;Lcom/google/tagmanager/Container$FunctionCallTagHandler;)V
    .registers 4
    .param p1, "customTagName"    # Ljava/lang/String;
    .param p2, "customTagHandler"    # Lcom/google/tagmanager/Container$FunctionCallTagHandler;

    .prologue
    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallTagHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 428
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCtfeServerAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "addr"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 707
    :try_start_1
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mCtfeServerAddress:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    .line 708
    if-nez p1, :cond_7

    :goto_5
    monitor-exit p0

    .line 711
    return-void

    .line 709
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/CtfeHost;->setCtfeServerAddress(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCtfeUrlPathAndQuery(Ljava/lang/String;)V
    .registers 3
    .param p1, "ctfeUrlPathAndQuery"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 715
    :try_start_1
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    .line 719
    return-void

    .line 717
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->setCtfeURLPathAndQuery(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_7

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
