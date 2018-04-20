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
            "Lcom/google/tagmanager/LoadCallback",
            "<",
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
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "ctfeHost"    # Lcom/google/tagmanager/CtfeHost;

    .prologue
    .line 39
    new-instance v0, Lcom/google/tagmanager/NetworkClientFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/NetworkClientFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/tagmanager/ResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/NetworkClientFactory;Lcom/google/tagmanager/CtfeHost;)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/NetworkClientFactory;Lcom/google/tagmanager/CtfeHost;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "factory"    # Lcom/google/tagmanager/NetworkClientFactory;
    .param p4, "ctfeHost"    # Lcom/google/tagmanager/CtfeHost;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
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

    const-string/jumbo v1, "/r?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .registers 11

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoader;->okToLoad()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 97
    const-string/jumbo v8, "Start loading resource from network ..."

    invoke-static {v8}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceLoader;->getCtfeUrl()Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/tagmanager/ResourceLoader;->mClientFactory:Lcom/google/tagmanager/NetworkClientFactory;

    invoke-virtual {v8}, Lcom/google/tagmanager/NetworkClientFactory;->createNetworkClient()Lcom/google/tagmanager/NetworkClient;

    move-result-object v4

    .line 101
    .local v4, "networkClient":Lcom/google/tagmanager/NetworkClient;
    const/4 v3, 0x0

    .line 105
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_17
    invoke-interface {v4, v7}, Lcom/google/tagmanager/NetworkClient;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1a} :catch_5d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_94
    .catchall {:try_start_17 .. :try_end_1a} :catchall_113

    move-result-object v3

    .line 119
    :try_start_1b
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v5}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v6

    .line 124
    .local v6, "resource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Successfully loaded supplemented resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 126
    iget-object v8, v6, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v8, :cond_c6

    .line 130
    :goto_46
    iget-object v8, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v8, v6}, Lcom/google/tagmanager/LoadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_4b} :catch_e1
    .catchall {:try_start_1b .. :try_end_4b} :catchall_113

    .line 137
    invoke-interface {v4}, Lcom/google/tagmanager/NetworkClient;->close()V

    .line 140
    const-string/jumbo v8, "Load resource from network finished."

    invoke-static {v8}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 141
    return-void

    .line 93
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "networkClient":Lcom/google/tagmanager/NetworkClient;
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "resource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .end local v7    # "url":Ljava/lang/String;
    :cond_55
    iget-object v8, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v9, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v8, v9}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 94
    return-void

    .line 106
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "networkClient":Lcom/google/tagmanager/NetworkClient;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_5d
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No data is retrieved from the given url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Make sure container_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/tagmanager/ResourceLoader;->mContainerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is correct."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 109
    iget-object v8, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v9, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v8, v9}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_90
    .catchall {:try_start_5e .. :try_end_90} :catchall_113

    .line 137
    invoke-interface {v4}, Lcom/google/tagmanager/NetworkClient;->close()V

    return-void

    .line 111
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_94
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/IOException;
    :try_start_95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error when loading resources from url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iget-object v8, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v9, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v8, v9}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_c2
    .catchall {:try_start_95 .. :try_end_c2} :catchall_113

    .line 137
    invoke-interface {v4}, Lcom/google/tagmanager/NetworkClient;->close()V

    return-void

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "resource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    :cond_c6
    :try_start_c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No change for container: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/tagmanager/ResourceLoader;->mContainerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_df} :catch_e1
    .catchall {:try_start_c6 .. :try_end_df} :catchall_113

    goto/16 :goto_46

    .line 131
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "resource":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    :catch_e1
    move-exception v2

    .line 132
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_e2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error when parsing downloaded resources from url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    iget-object v8, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v9, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v8, v9}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_10f
    .catchall {:try_start_e2 .. :try_end_10f} :catchall_113

    .line 137
    invoke-interface {v4}, Lcom/google/tagmanager/NetworkClient;->close()V

    return-void

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_113
    move-exception v0

    .local v0, "-l_6_R":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/google/tagmanager/NetworkClient;->close()V

    throw v0
.end method

.method private okToLoad()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 77
    .local v1, "network":Landroid/net/NetworkInfo;
    if-nez v1, :cond_19

    .line 78
    :cond_12
    const-string/jumbo v2, "...no network connectivity"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 79
    return v4

    .line 77
    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 81
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method getCtfeUrl()Ljava/lang/String;
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeHost:Lcom/google/tagmanager/CtfeHost;

    invoke-virtual {v2}, Lcom/google/tagmanager/CtfeHost;->getCtfeServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&v=a62676326"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    if-nez v1, :cond_35

    .line 149
    :cond_24
    :goto_24
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/PreviewManager$PreviewMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 153
    :goto_34
    return-object v0

    .line 146
    :cond_35
    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&pv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 151
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&gtm_debug=x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public run()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v0, :cond_d

    .line 65
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v0}, Lcom/google/tagmanager/LoadCallback;->startLoad()V

    .line 66
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceLoader;->loadResource()V

    .line 67
    return-void

    .line 63
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCtfeURLPathAndQuery(Ljava/lang/String;)V
    .registers 4
    .param p1, "urlPathAndQuery"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    if-eqz p1, :cond_1c

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting CTFE URL path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    .line 165
    :goto_1b
    return-void

    .line 160
    :cond_1c
    iget-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mDefaultCtfeUrlPathAndQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/tagmanager/ResourceLoader;->mCtfeUrlPathAndQuery:Ljava/lang/String;

    goto :goto_1b
.end method

.method setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "callback":Lcom/google/tagmanager/LoadCallback;, "Lcom/google/tagmanager/LoadCallback<Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;>;"
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mCallback:Lcom/google/tagmanager/LoadCallback;

    .line 86
    return-void
.end method

.method setPreviousVersion(Ljava/lang/String;)V
    .registers 4
    .param p1, "version"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting previous container version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoader;->mPreviousVersion:Ljava/lang/String;

    .line 171
    return-void
.end method
