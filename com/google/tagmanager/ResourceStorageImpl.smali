.class Lcom/google/tagmanager/ResourceStorageImpl;
.super Ljava/lang/Object;
.source "ResourceStorageImpl.java"

# interfaces
.implements Lcom/google/tagmanager/Container$ResourceStorage;


# static fields
.field private static final SAVED_RESOURCE_FILENAME_PREFIX:Ljava/lang/String; = "resource_"

.field private static final SAVED_RESOURCE_SUB_DIR:Ljava/lang/String; = "google_tagmanager"


# instance fields
.field private mCallback:Lcom/google/tagmanager/LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/LoadCallback<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method private stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 246
    .local v0, "writer":Ljava/io/Writer;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 247
    .local v1, "buffer":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    .local v2, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Lcom/google/tagmanager/ResourceStorageImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getResourceFile()Ljava/io/File;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    const-string v2, "google_tagmanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 241
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public loadExpandedResourceFromJsonAsset(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 6
    .param p1, "assetFile"    # Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading default container from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 174
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    const-string v2, "Looking for default JSON container in package, but no assets were found."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 176
    return-object v1

    .line 178
    :cond_0
    const/4 v2, 0x0

    .line 180
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 181
    invoke-direct {p0, v2}, Lcom/google/tagmanager/ResourceStorageImpl;->stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/JsonUtils;->expandedResourceFromJsonString(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-eqz v2, :cond_1

    .line 191
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v3

    .line 194
    :cond_1
    :goto_0
    return-object v1

    .line 189
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 185
    :catch_1
    move-exception v3

    .line 186
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing JSON file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    nop

    .line 189
    if-eqz v2, :cond_2

    .line 191
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 194
    goto :goto_1

    .line 192
    :catch_2
    move-exception v4

    .line 194
    :cond_2
    :goto_1
    return-object v1

    .line 182
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found (or errors reading it)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    nop

    .line 189
    if-eqz v2, :cond_3

    .line 191
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 194
    goto :goto_2

    .line 192
    :catch_4
    move-exception v4

    .line 194
    :cond_3
    :goto_2
    return-object v1

    .line 189
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_4

    .line 191
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 194
    goto :goto_4

    .line 192
    :catch_5
    move-exception v3

    .line 194
    :cond_4
    :goto_4
    throw v1
.end method

.method public loadResourceFromContainerAsset(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 8
    .param p1, "assetFile"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading default container from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 131
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    const-string v2, "No assets found in package"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 133
    return-object v1

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 137
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v2, v3

    .line 141
    nop

    .line 144
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v3}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 146
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 147
    .local v4, "outputByteArray":[B
    invoke-static {v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v5

    .line 148
    .local v5, "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsed default container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    nop

    .line 155
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 158
    :goto_0
    return-object v5

    .line 154
    .end local v3    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "outputByteArray":[B
    .end local v5    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 150
    :catch_1
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when parsing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    nop

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 158
    goto :goto_1

    .line 156
    :catch_2
    move-exception v4

    .line 158
    :goto_1
    return-object v1

    .line 155
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 158
    goto :goto_3

    .line 156
    :catch_3
    move-exception v3

    .line 158
    :goto_3
    throw v1

    .line 138
    :catch_4
    move-exception v3

    .line 139
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 140
    return-object v1
.end method

.method loadResourceFromDisk()V
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 69
    const-string v0, "error closing stream for reading resource from disk"

    iget-object v1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v1, :cond_2

    .line 74
    invoke-interface {v1}, Lcom/google/tagmanager/LoadCallback;->startLoad()V

    .line 76
    const-string v1, "Start loading resource from disk ..."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v1, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 83
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 88
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v1, v2

    .line 93
    nop

    .line 96
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v2, "input":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v2}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    iget-object v3, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->parseFrom([B)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/tagmanager/LoadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v2    # "input":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "error reading resource from disk"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v4, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v3, v4}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 107
    :goto_0
    goto :goto_1

    .line 105
    :catch_1
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 110
    :goto_1
    const-string v0, "Load resource from disk finished."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 111
    return-void

    .line 104
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 107
    goto :goto_3

    .line 105
    :catch_2
    move-exception v3

    .line 106
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 107
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    throw v2

    .line 89
    :catch_3
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "resource not on disk"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v3, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v2, v3}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 92
    return-void

    .line 72
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadResourceFromDiskInBackground()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/tagmanager/ResourceStorageImpl$1;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ResourceStorageImpl$1;-><init>(Lcom/google/tagmanager/ResourceStorageImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method saveResourceToDisk(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Z
    .locals 6
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 209
    const-string v0, "error closing stream for writing resource to disk"

    const/4 v1, 0x0

    .line 210
    .local v1, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v2

    .line 212
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v4

    .line 217
    nop

    .line 219
    :try_start_1
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    const/4 v3, 0x1

    .line 227
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v4

    .line 229
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 230
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return v3

    .line 226
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 221
    :catch_1
    move-exception v4

    .line 222
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "Error writing resource to disk. Removing resource from disk."

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    goto :goto_1

    .line 228
    :catch_2
    move-exception v4

    .line 229
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 231
    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 232
    :goto_1
    return v3

    .line 227
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 230
    goto :goto_3

    .line 228
    :catch_3
    move-exception v4

    .line 229
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 230
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    throw v3

    .line 213
    :catch_4
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Error opening resource file for writing"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 216
    return v3
.end method

.method public saveResourceToDiskInBackground(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .locals 2
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/tagmanager/ResourceStorageImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/ResourceStorageImpl$2;-><init>(Lcom/google/tagmanager/ResourceStorageImpl;Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/LoadCallback<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "callback":Lcom/google/tagmanager/LoadCallback;, "Lcom/google/tagmanager/LoadCallback<Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;>;"
    iput-object p1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    .line 51
    return-void
.end method
