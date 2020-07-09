.class public Lcom/google/tagmanager/Container;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Container$ResourceLoaderScheduler;,
        Lcom/google/tagmanager/Container$ResourceStorage;,
        Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;,
        Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;,
        Lcom/google/tagmanager/Container$FunctionCallTagHandler;,
        Lcom/google/tagmanager/Container$FunctionCallMacroHandler;,
        Lcom/google/tagmanager/Container$Callback;,
        Lcom/google/tagmanager/Container$RefreshFailure;,
        Lcom/google/tagmanager/Container$RefreshType;
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
            "Lcom/google/tagmanager/LoadCallback<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionCallMacroHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Container$FunctionCallMacroHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionCallTagHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Lcom/google/tagmanager/LoadCallback<",
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "tagManager"    # Lcom/google/tagmanager/TagManager;

    .line 208
    new-instance v0, Lcom/google/tagmanager/ResourceStorageImpl;

    invoke-direct {v0, p1, p2}, Lcom/google/tagmanager/ResourceStorageImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/tagmanager/Container;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;Lcom/google/tagmanager/Container$ResourceStorage;)V

    .line 210
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;Lcom/google/tagmanager/Container$ResourceStorage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "tagManager"    # Lcom/google/tagmanager/TagManager;
    .param p4, "resourceStorage"    # Lcom/google/tagmanager/Container$ResourceStorage;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const-string v0, ""

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
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/tagmanager/Container$RefreshType;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->callRefreshBegin(Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/Container;

    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->setSupplementals([Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/tagmanager/Container;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/tagmanager/Container;

    .line 27
    iget-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/tagmanager/Container;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # J

    .line 27
    iput-wide p1, p0, Lcom/google/tagmanager/Container;->mLastRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/tagmanager/Container$RefreshType;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->callRefreshSuccess(Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/tagmanager/Container$RefreshType;
    .param p2, "x2"    # Lcom/google/tagmanager/Container$RefreshFailure;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/Container;->callRefreshFailure(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/tagmanager/Container;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/Container;

    .line 27
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isContainerPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/Container;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->saveResourceToDisk(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V

    return-void
.end method

.method private declared-synchronized callRefreshBegin(Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 1
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Container$Callback;->containerRefreshBegin(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 451
    .end local p1    # "refreshType":Lcom/google/tagmanager/Container$RefreshType;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized callRefreshFailure(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .locals 1
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;
    .param p2, "refreshFailure"    # Lcom/google/tagmanager/Container$RefreshFailure;

    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/tagmanager/Container$Callback;->containerRefreshFailure(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 445
    .end local p1    # "refreshType":Lcom/google/tagmanager/Container$RefreshType;
    .end local p2    # "refreshFailure":Lcom/google/tagmanager/Container$RefreshFailure;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized callRefreshSuccess(Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 2
    .param p1, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    monitor-enter p0

    .line 438
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling containerRefreshSuccess("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): mUserCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Container$Callback;->containerRefreshSuccess(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    .end local p1    # "refreshType":Lcom/google/tagmanager/Container$RefreshType;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createInitialContainer()V
    .locals 5

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tagmanager/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "containerFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Container$ResourceStorage;->loadResourceFromContainerAsset(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v1

    .line 736
    .local v1, "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    if-eqz v1, :cond_0

    .line 737
    invoke-direct {p0, v1}, Lcom/google/tagmanager/Container;->initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    .line 738
    return-void

    .line 740
    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/tagmanager/Container$ResourceStorage;->loadExpandedResourceFromJsonAsset(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v2

    .line 742
    .local v2, "expandedResource":Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    if-nez v2, :cond_1

    .line 743
    const-string v3, "No default container found; creating an empty container."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v2

    .line 746
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/tagmanager/Container;->initEvaluatorsWithExpandedResource(Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V

    .line 747
    return-void
.end method

.method private declared-synchronized getRuntime()Lcom/google/tagmanager/Runtime;
    .locals 1

    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mRuntime:Lcom/google/tagmanager/Runtime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V
    .locals 4
    .param p1, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "expandedResource":Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :try_start_0
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->getExpandedResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/tagmanager/ResourceUtil$InvalidResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 654
    nop

    .line 655
    invoke-direct {p0, v0}, Lcom/google/tagmanager/Container;->initEvaluatorsWithExpandedResource(Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V

    .line 656
    return-void

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "err":Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not loading resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because it is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method private initEvaluatorsWithExpandedResource(Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V
    .locals 9
    .param p1, "expandedResource"    # Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    .line 669
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getResourceFormatVersion()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/Container;->mResourceFormatVersion:I

    .line 671
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/Container;->createEventInfoDistributor(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoDistributor;

    move-result-object v0

    .line 672
    .local v0, "eventInfoDistributor":Lcom/google/tagmanager/EventInfoDistributor;
    new-instance v8, Lcom/google/tagmanager/Runtime;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    invoke-virtual {v1}, Lcom/google/tagmanager/TagManager;->getDataLayer()Lcom/google/tagmanager/DataLayer;

    move-result-object v4

    new-instance v5, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$1;)V

    new-instance v6, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;

    invoke-direct {v6, p0, v1}, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$1;)V

    move-object v1, v8

    move-object v3, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V

    .line 675
    .local v1, "runtime":Lcom/google/tagmanager/Runtime;
    invoke-direct {p0, v1}, Lcom/google/tagmanager/Container;->setRuntime(Lcom/google/tagmanager/Runtime;)V

    .line 676
    return-void
.end method

.method private isContainerPreview()Z
    .locals 3

    .line 726
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    .line 727
    .local v0, "previewManager":Lcom/google/tagmanager/PreviewManager;
    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDefaultContainerRefreshMode()Z
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/tagmanager/TagManager;->getRefreshMode()Lcom/google/tagmanager/TagManager$RefreshMode;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/TagManager$RefreshMode;->DEFAULT_CONTAINER:Lcom/google/tagmanager/TagManager$RefreshMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized saveResourceToDisk(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    .locals 3
    .param p1, "supplementedResource"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    monitor-enter p0

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>()V

    .line 640
    .local v0, "resourceWithMetadata":Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    invoke-virtual {p0}, Lcom/google/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 641
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v1, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 642
    iput-object p1, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 643
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Container$ResourceStorage;->saveResourceToDiskInBackground(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v0    # "resourceWithMetadata":Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 637
    .end local p1    # "supplementedResource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setRuntime(Lcom/google/tagmanager/Runtime;)V
    .locals 0
    .param p1, "runtime"    # Lcom/google/tagmanager/Runtime;

    monitor-enter p0

    .line 698
    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mRuntime:Lcom/google/tagmanager/Runtime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    monitor-exit p0

    return-void

    .line 697
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    .end local p1    # "runtime":Lcom/google/tagmanager/Runtime;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setSupplementals([Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .locals 5
    .param p1, "supplementals"    # [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v0, "supplementalList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Serving$Supplemental;>;"
    move-object v1, p1

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 662
    .local v4, "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v4    # "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/Runtime;->setSupplementals(Ljava/util/List;)V

    .line 666
    return-void
.end method

.method private useAvailableToken(J)Z
    .locals 8
    .param p1, "currentTime"    # J

    .line 754
    iget-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshMethodCalledTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 755
    iget v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    .line 756
    return v1

    .line 759
    :cond_0
    iget-wide v2, p0, Lcom/google/tagmanager/Container;->mLastRefreshMethodCalledTime:J

    sub-long v2, p1, v2

    .line 760
    .local v2, "timeElapsed":J
    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    const/4 v4, 0x0

    if-gez v0, :cond_1

    .line 761
    return v4

    .line 763
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    const/16 v5, 0x1e

    if-ge v0, v5, :cond_2

    .line 764
    const-wide/32 v6, 0xdbba0

    div-long v6, v2, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 765
    .local v0, "numAddedTokens":I
    iget v6, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    .line 768
    .end local v0    # "numAddedTokens":I
    :cond_2
    iget v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    if-lez v0, :cond_3

    .line 769
    iget v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/Container;->mNumTokens:I

    .line 770
    return v1

    .line 773
    :cond_3
    return v4
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 355
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    invoke-interface {v1}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->close()V

    .line 358
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    iput-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    .line 359
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v1}, Lcom/google/tagmanager/Container$ResourceStorage;->close()V

    .line 362
    :cond_1
    iput-object v0, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    .line 363
    iput-object v0, p0, Lcom/google/tagmanager/Container;->mUserCallback:Lcom/google/tagmanager/Container$Callback;

    .line 364
    iget-object v1, p0, Lcom/google/tagmanager/Container;->mTagManager:Lcom/google/tagmanager/TagManager;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/TagManager;->removeContainer(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling close() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lcom/google/tagmanager/Container;->mRuntime:Lcom/google/tagmanager/Runtime;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 354
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method createEventInfoDistributor(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoDistributor;
    .locals 2
    .param p1, "resourceVersion"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 688
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/PreviewManager$PreviewMode;->equals(Ljava/lang/Object;)Z

    .line 693
    new-instance v0, Lcom/google/tagmanager/NoopEventInfoDistributor;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopEventInfoDistributor;-><init>()V

    return-object v0
.end method

.method evaluateTags(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentEventName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 459
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Runtime;->evaluateTags(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    .line 240
    .local v0, "runtime":Lcom/google/tagmanager/Runtime;
    if-nez v0, :cond_0

    .line 241
    const-string v1, "getBoolean called for closed container."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getBoolean() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getCtfeUrlPathAndQuery()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    .line 259
    .local v0, "runtime":Lcom/google/tagmanager/Runtime;
    if-nez v0, :cond_0

    .line 260
    const-string v1, "getDouble called for closed container."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultDouble()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 264
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToDouble(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getDouble() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 1
    .param p1, "customMacroName"    # Ljava/lang/String;

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallMacroHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container$FunctionCallMacroHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/google/tagmanager/Container;
    .end local p1    # "customMacroName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFunctionCallTagHandler(Ljava/lang/String;)Lcom/google/tagmanager/Container$FunctionCallTagHandler;
    .locals 1
    .param p1, "customTagName"    # Ljava/lang/String;

    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallTagHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container$FunctionCallTagHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/google/tagmanager/Container;
    .end local p1    # "customTagName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLastRefreshTime()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshTime:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 277
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    .line 278
    .local v0, "runtime":Lcom/google/tagmanager/Runtime;
    if-nez v0, :cond_0

    .line 279
    const-string v1, "getLong called for closed container."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultInt64()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 283
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToInt64(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getLong() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    .line 297
    .local v0, "runtime":Lcom/google/tagmanager/Runtime;
    if-nez v0, :cond_0

    .line 298
    const-string v1, "getString called for closed container."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getString() threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Returning default value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isDefault()Z
    .locals 4

    .line 375
    invoke-virtual {p0}, Lcom/google/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method load(Lcom/google/tagmanager/Container$Callback;)V
    .locals 5
    .param p1, "callback"    # Lcom/google/tagmanager/Container$Callback;

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
    .locals 3
    .param p1, "callback"    # Lcom/google/tagmanager/Container$Callback;
    .param p2, "scheduler"    # Lcom/google/tagmanager/Container$ResourceLoaderScheduler;
    .param p3, "clock"    # Lcom/google/tagmanager/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mDiskLoadCallback:Lcom/google/tagmanager/LoadCallback;

    if-nez v0, :cond_3

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

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "Container is in DEFAULT_CONTAINER mode. Use default container."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    monitor-exit p0

    return-void

    .line 537
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    :try_start_1
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

    if-eqz v0, :cond_1

    .line 613
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getCTFEUrlPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->setCtfeURLPathAndQuery(Ljava/lang/String;)V

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeServerAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mCtfeServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/CtfeHost;->setCtfeServerAddress(Ljava/lang/String;)V

    .line 619
    :cond_2
    iput-object p2, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    .line 622
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mResourceStorage:Lcom/google/tagmanager/Container$ResourceStorage;

    invoke-interface {v0}, Lcom/google/tagmanager/Container$ResourceStorage;->loadResourceFromDiskInBackground()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 466
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container already loaded: container ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    .end local p1    # "callback":Lcom/google/tagmanager/Container$Callback;
    .end local p2    # "scheduler":Lcom/google/tagmanager/Container$ResourceLoaderScheduler;
    .end local p3    # "clock":Lcom/google/tagmanager/Clock;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized loadAfterDelay(J)V
    .locals 2
    .param p1, "delay"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isDefaultContainerRefreshMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->loadAfterDelay(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 631
    .end local p1    # "delay":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized refresh()V
    .locals 4

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->getRuntime()Lcom/google/tagmanager/Runtime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    const-string v0, "refresh called for closed container"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 331
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->isDefaultContainerRefreshMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "Container is in DEFAULT_CONTAINER mode. Refresh request is ignored."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 336
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 337
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/Container;->useAvailableToken(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    const-string v2, "Container refresh requested"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 339
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 340
    iput-wide v0, p0, Lcom/google/tagmanager/Container;->mLastRefreshMethodCalledTime:J

    goto :goto_0

    .line 342
    :cond_2
    const-string v2, "Container refresh was called too often. Ignored."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    .end local v0    # "currentTime":J
    :goto_0
    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling refresh() throws an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerFunctionCallMacroHandler(Ljava/lang/String;Lcom/google/tagmanager/Container$FunctionCallMacroHandler;)V
    .locals 1
    .param p1, "customMacroName"    # Ljava/lang/String;
    .param p2, "customMacroHandler"    # Lcom/google/tagmanager/Container$FunctionCallMacroHandler;

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallMacroHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 405
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    .end local p1    # "customMacroName":Ljava/lang/String;
    .end local p2    # "customMacroHandler":Lcom/google/tagmanager/Container$FunctionCallMacroHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerFunctionCallTagHandler(Ljava/lang/String;Lcom/google/tagmanager/Container$FunctionCallTagHandler;)V
    .locals 1
    .param p1, "customTagName"    # Ljava/lang/String;
    .param p2, "customTagHandler"    # Lcom/google/tagmanager/Container$FunctionCallTagHandler;

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mFunctionCallTagHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 426
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    .end local p1    # "customTagName":Ljava/lang/String;
    .end local p2    # "customTagHandler":Lcom/google/tagmanager/Container$FunctionCallTagHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCtfeServerAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 707
    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mCtfeServerAddress:Ljava/lang/String;

    .line 708
    if-eqz p1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/CtfeHost;->setCtfeServerAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 706
    .end local p1    # "addr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCtfeUrlPathAndQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "ctfeUrlPathAndQuery"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 715
    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/Container;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/google/tagmanager/Container;->mNetworkLoadScheduler:Lcom/google/tagmanager/Container$ResourceLoaderScheduler;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/Container$ResourceLoaderScheduler;->setCtfeURLPathAndQuery(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    .end local p0    # "this":Lcom/google/tagmanager/Container;
    :cond_0
    monitor-exit p0

    return-void

    .line 714
    .end local p1    # "ctfeUrlPathAndQuery":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
