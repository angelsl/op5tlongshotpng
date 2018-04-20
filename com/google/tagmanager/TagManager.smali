.class public Lcom/google/tagmanager/TagManager;
.super Ljava/lang/Object;
.source "TagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/TagManager$3;,
        Lcom/google/tagmanager/TagManager$ContainerOpenException;,
        Lcom/google/tagmanager/TagManager$ContainerProvider;,
        Lcom/google/tagmanager/TagManager$Logger;,
        Lcom/google/tagmanager/TagManager$RefreshMode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/tagmanager/TagManager;


# instance fields
.field private final mContainerProvider:Lcom/google/tagmanager/TagManager$ContainerProvider;

.field private final mContainers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Container;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mCtfeServerAddr:Ljava/lang/String;

.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;

.field private volatile mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/TagManager$ContainerProvider;Lcom/google/tagmanager/DataLayer;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerProvider"    # Lcom/google/tagmanager/TagManager$ContainerProvider;
    .param p3, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p1, :cond_31

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/google/tagmanager/TagManager;->mContainerProvider:Lcom/google/tagmanager/TagManager$ContainerProvider;

    .line 144
    sget-object v0, Lcom/google/tagmanager/TagManager$RefreshMode;->STANDARD:Lcom/google/tagmanager/TagManager$RefreshMode;

    iput-object v0, p0, Lcom/google/tagmanager/TagManager;->mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    iput-object p3, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 147
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    new-instance v1, Lcom/google/tagmanager/TagManager$1;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/TagManager$1;-><init>(Lcom/google/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->registerListener(Lcom/google/tagmanager/DataLayer$Listener;)V

    .line 157
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    new-instance v1, Lcom/google/tagmanager/AdwordsClickReferrerListener;

    iget-object v2, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/tagmanager/AdwordsClickReferrerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->registerListener(Lcom/google/tagmanager/DataLayer$Listener;)V

    .line 158
    return-void

    .line 139
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/tagmanager/TagManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/TagManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/tagmanager/TagManager;->refreshTagsInAllContainers(Ljava/lang/String;)V

    return-void
.end method

.method static clearInstance()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 189
    const-class v0, Lcom/google/tagmanager/TagManager;

    .local v0, "-l_0_R":Ljava/lang/Object;
    const-class v2, Lcom/google/tagmanager/TagManager;

    monitor-enter v2

    .line 190
    const/4 v2, 0x0

    :try_start_6
    sput-object v2, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_a
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/tagmanager/TagManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-class v0, Lcom/google/tagmanager/TagManager;

    .local v0, "-l_1_R":Ljava/lang/Object;
    const-class v4, Lcom/google/tagmanager/TagManager;

    monitor-enter v4

    .line 167
    :try_start_5
    sget-object v4, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    if-eqz v4, :cond_d

    .line 182
    :goto_9
    sget-object v4, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    monitor-exit v0

    return-object v4

    .line 168
    :cond_d
    if-eqz p0, :cond_29

    .line 172
    new-instance v2, Lcom/google/tagmanager/TagManager$2;

    invoke-direct {v2}, Lcom/google/tagmanager/TagManager$2;-><init>()V

    .line 179
    .local v2, "provider":Lcom/google/tagmanager/TagManager$ContainerProvider;
    new-instance v3, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    invoke-direct {v3, p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;-><init>(Landroid/content/Context;)V

    .line 180
    .local v3, "store":Lcom/google/tagmanager/DataLayer$PersistentStore;
    new-instance v4, Lcom/google/tagmanager/TagManager;

    new-instance v5, Lcom/google/tagmanager/DataLayer;

    invoke-direct {v5, v3}, Lcom/google/tagmanager/DataLayer;-><init>(Lcom/google/tagmanager/DataLayer$PersistentStore;)V

    invoke-direct {v4, p0, v2, v5}, Lcom/google/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/tagmanager/TagManager$ContainerProvider;Lcom/google/tagmanager/DataLayer;)V

    sput-object v4, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    goto :goto_9

    .line 183
    .end local v2    # "provider":Lcom/google/tagmanager/TagManager$ContainerProvider;
    .end local v3    # "store":Lcom/google/tagmanager/DataLayer$PersistentStore;
    :catchall_26
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1

    .line 169
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_29
    :try_start_29
    const-string/jumbo v4, "TagManager.getInstance requires non-null context."

    invoke-static {v4}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 170
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_26
.end method

.method private refreshTagsInAllContainers(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 317
    return-void

    .line 314
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container;

    .line 315
    .local v0, "container":Lcom/google/tagmanager/Container;
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Container;->evaluateTags(Ljava/lang/String;)V

    goto :goto_a
.end method


# virtual methods
.method public getContainer(Ljava/lang/String;)Lcom/google/tagmanager/Container;
    .registers 3
    .param p1, "containerId"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataLayer()Lcom/google/tagmanager/DataLayer;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    return-object v0
.end method

.method public getLogger()Lcom/google/tagmanager/Logger;
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Lcom/google/tagmanager/Log;->getLogger()Lcom/google/tagmanager/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshMode()Lcom/google/tagmanager/TagManager$RefreshMode;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;

    return-object v0
.end method

.method public openContainer(Ljava/lang/String;Lcom/google/tagmanager/Container$Callback;)Lcom/google/tagmanager/Container;
    .registers 7
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/tagmanager/Container$Callback;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mContainerProvider:Lcom/google/tagmanager/TagManager$ContainerProvider;

    iget-object v2, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/google/tagmanager/TagManager$ContainerProvider;->newContainer(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;)Lcom/google/tagmanager/Container;

    move-result-object v0

    .line 222
    .local v0, "container":Lcom/google/tagmanager/Container;
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 226
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mCtfeServerAddr:Ljava/lang/String;

    if-nez v1, :cond_39

    .line 229
    :goto_14
    invoke-virtual {v0, p2}, Lcom/google/tagmanager/Container;->load(Lcom/google/tagmanager/Container$Callback;)V

    .line 230
    return-object v0

    .line 223
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Container id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has already been opened."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_39
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mCtfeServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/Container;->setCtfeServerAddress(Ljava/lang/String;)V

    goto :goto_14
.end method

.method removeContainer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "containerId"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method setCtfeServerAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "addr"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/tagmanager/TagManager;->mCtfeServerAddr:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setLogger(Lcom/google/tagmanager/Logger;)V
    .registers 2
    .param p1, "logger"    # Lcom/google/tagmanager/Logger;

    .prologue
    .line 244
    invoke-static {p1}, Lcom/google/tagmanager/Log;->setLogger(Lcom/google/tagmanager/Logger;)V

    .line 245
    return-void
.end method

.method declared-synchronized setPreviewData(Landroid/net/Uri;)Z
    .registers 10
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 271
    :try_start_2
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v5

    .line 272
    .local v5, "previewManager":Lcom/google/tagmanager/PreviewManager;
    invoke-virtual {v5, p1}, Lcom/google/tagmanager/PreviewManager;->setPreviewData(Landroid/net/Uri;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_36

    move-result v6

    if-nez v6, :cond_e

    monitor-exit p0

    .line 299
    return v7

    .line 273
    :cond_e
    :try_start_e
    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "previewContainerId":Ljava/lang/String;
    sget-object v6, Lcom/google/tagmanager/TagManager$3;->$SwitchMap$com$google$tagmanager$PreviewManager$PreviewMode:[I

    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/tagmanager/PreviewManager$PreviewMode;->ordinal()I

    move-result v7

    aget v6, v6, v7
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_36

    packed-switch v6, :pswitch_data_7a

    .line 297
    :cond_21
    :goto_21
    const/4 v6, 0x1

    monitor-exit p0

    return v6

    .line 276
    :pswitch_24
    :try_start_24
    iget-object v6, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/Container;

    .line 277
    .local v2, "exitPreviewContainer":Lcom/google/tagmanager/Container;
    if-eqz v2, :cond_21

    .line 278
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/tagmanager/Container;->setCtfeUrlPathAndQuery(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Lcom/google/tagmanager/Container;->refresh()V
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_36

    goto :goto_21

    .end local v2    # "exitPreviewContainer":Lcom/google/tagmanager/Container;
    .end local v4    # "previewContainerId":Ljava/lang/String;
    .end local v5    # "previewManager":Lcom/google/tagmanager/PreviewManager;
    :catchall_36
    move-exception v6

    monitor-exit p0

    throw v6

    .line 284
    .restart local v4    # "previewContainerId":Ljava/lang/String;
    .restart local v5    # "previewManager":Lcom/google/tagmanager/PreviewManager;
    :pswitch_39
    :try_start_39
    iget-object v6, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 285
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/tagmanager/Container;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container;

    .line 286
    .local v0, "container":Lcom/google/tagmanager/Container;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 289
    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->getCtfeUrlPathAndQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 291
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/Container;->setCtfeUrlPathAndQuery(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->refresh()V

    goto :goto_43

    .line 287
    :cond_6f
    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getCTFEUrlPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/Container;->setCtfeUrlPathAndQuery(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->refresh()V
    :try_end_79
    .catchall {:try_start_39 .. :try_end_79} :catchall_36

    goto :goto_43

    .line 274
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public setRefreshMode(Lcom/google/tagmanager/TagManager$RefreshMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/google/tagmanager/TagManager$RefreshMode;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/tagmanager/TagManager;->mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;

    .line 255
    return-void
.end method
