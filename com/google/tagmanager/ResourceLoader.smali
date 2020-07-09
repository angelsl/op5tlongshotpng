.class Lcom/google/tagmanager/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CTFE_URL_PREFIX:Ljava/lang/String; = "/r?id="

.field private static final CTFE_URL_SUFFIX:Ljava/lang/String; = "&v=a62676326"

.field private static final PREVIOUS_CONTAINER_VERSION_QUERY_NAME:Ljava/lang/String; = "pv"

.field static final SDK_VERSION:Ljava/lang/String; = "a62676326"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/google/tagmanager/LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/LoadCallback<",
            "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientFactory:Lcom/google/tagmanager/NetworkClientFactory;

.field private final mContainerId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private volatile mCtfeHost:Lcom/google/tagmanager/CtfeHost;

.field private volatile mCtfeUrlPathAndQuery:Ljava/lang/String;

.field private final mDefaultCtfeUrlPathAndQuery:Ljava/lang/String;

.field private volatile mPreviousVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "ctfeHost"    # Lcom/google/tagmanager/CtfeHost;

    .line 39
    new-instance v0, Lcom/google/tagmanager/NetworkClientFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/NetworkClientFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/tagmanager/ResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/NetworkClientFactory;Lcom/google/tagmanager/CtfeHost;)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/NetworkClientFactory;Lcom/google/tagmanager/CtfeHost;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "factory"    # Lcom/google/tagmanager/NetworkClientFactory;
    .param p4, "ctfeHost"    # Lcom/google/tagmanager/CtfeHost;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/google/tagmanager/ResourceLoader;->mClientFactory:Lcom/google/tagmanager/NetworkClientFactory;

    .line 51
    iput-object p2, p0, Lcom/google/tagmanager/ResourceLoader;->mContainerId:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/r?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mDefaultCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mDefaultCtfeUrlPathAndQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private loadResource()V
    .locals 8

    .line 92
    const-string v0, " "

    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoader;->okToLoad()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v1, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 94
    return-void

    .line 97
    :cond_0
    const-string v1, "Start loading resource from network ..."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceLoader;->getCtfeUrl()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoader;->mClientFactory:Lcom/google/tagmanager/NetworkClientFactory;

    invoke-virtual {v2}, Lcom/google/tagmanager/NetworkClientFactory;->createNetworkClient()Lcom/google/tagmanager/NetworkClient;

    move-result-object v2

    .line 101
    .local v2, "networkClient":Lcom/google/tagmanager/NetworkClient;
    const/4 v3, 0x0

    .line 105
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v2, v1}, Lcom/google/tagmanager/NetworkClient;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 115
    nop

    .line 119
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v4}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v5

    .line 124
    .local v5, "resource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully loaded supplemented resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 126
    iget-object v6, v5, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v6, :cond_1

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No change for container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/tagmanager/ResourceLoader;->mContainerId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 130
    :cond_1
    iget-object v6, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v6, v5}, Lcom/google/tagmanager/LoadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "resource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    nop

    .line 137
    invoke-interface {v2}, Lcom/google/tagmanager/NetworkClient;->close()V

    .line 138
    nop

    .line 140
    const-string v0, "Load resource from network finished."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 141
    return-void

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when parsing downloaded resources from url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v5, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v0, v5}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-interface {v2}, Lcom/google/tagmanager/NetworkClient;->close()V

    return-void

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v4

    .line 112
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when loading resources from url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v5, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v0, v5}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    invoke-interface {v2}, Lcom/google/tagmanager/NetworkClient;->close()V

    return-void

    .line 106
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No data is retrieved from the given url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Make sure container_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/tagmanager/ResourceLoader;->mContainerId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is correct."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v5, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v4, v5}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    invoke-interface {v2}, Lcom/google/tagmanager/NetworkClient;->close()V

    return-void

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    invoke-interface {v2}, Lcom/google/tagmanager/NetworkClient;->close()V

    throw v0
.end method

.method private okToLoad()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 77
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 78
    :cond_1
    :goto_0
    const-string v2, "...no network connectivity"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method getCtfeUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    invoke-virtual {v1}, Lcom/google/tagmanager/CtfeHost;->getCtfeServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&v=a62676326"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&pv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/PreviewManager$PreviewMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&gtm_debug=x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    return-object v0
.end method

.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/google/tagmanager/LoadCallback;->startLoad()V

    .line 66
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoader;->loadResource()V

    .line 67
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCtfeURLPathAndQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "urlPathAndQuery"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mDefaultCtfeUrlPathAndQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting CTFE URL path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 165
    :goto_0
    return-void
.end method

.method setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/LoadCallback<",
            "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "callback":Lcom/google/tagmanager/LoadCallback;, "Lcom/google/tagmanager/LoadCallback<Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;>;"
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    .line 86
    return-void
.end method

.method setPreviousVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting previous container version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    .line 171
    return-void
.end method
