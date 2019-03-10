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
    .registers 4
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
    .registers 8
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
    :goto_15
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_22

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_15

    .line 252
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_8
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ResourceStorageImpl;
    throw v0
.end method

.method getResourceFile()Ljava/io/File;
    .registers 5
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
    .registers 8
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

    if-nez v0, :cond_23

    .line 175
    const-string v2, "Looking for default JSON container in package, but no assets were found."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 176
    return-object v1

    .line 178
    :cond_23
    move-object v2, v1

    .line 180
    .local v2, "is":Ljava/io/InputStream;
    :try_start_24
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 181
    invoke-direct {p0, v2}, Lcom/google/tagmanager/ResourceStorageImpl;->stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/JsonUtils;->expandedResourceFromJsonString(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_61
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_31} :catch_3b
    .catchall {:try_start_24 .. :try_end_31} :catchall_39

    .line 189
    if-eqz v2, :cond_38

    .line 191
    :try_start_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 194
    goto :goto_38

    .line 192
    :catch_37
    move-exception v1

    .line 194
    :cond_38
    :goto_38
    return-object v3

    .line 189
    :catchall_39
    move-exception v1

    goto :goto_84

    .line 185
    :catch_3b
    move-exception v3

    .line 186
    .local v3, "e":Lorg/json/JSONException;
    :try_start_3c
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
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_39

    .line 187
    nop

    .line 189
    if-eqz v2, :cond_60

    .line 191
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 194
    goto :goto_60

    .line 192
    :catch_5f
    move-exception v4

    .line 194
    :cond_60
    :goto_60
    return-object v1

    .line 182
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_61
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    :try_start_62
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
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_39

    .line 184
    nop

    .line 189
    if-eqz v2, :cond_83

    .line 191
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 194
    goto :goto_83

    .line 192
    :catch_82
    move-exception v4

    .line 194
    :cond_83
    :goto_83
    return-object v1

    .line 189
    .end local v3    # "e":Ljava/io/IOException;
    :goto_84
    if-eqz v2, :cond_8b

    .line 191
    :try_start_86
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 194
    goto :goto_8b

    .line 192
    :catch_8a
    move-exception v3

    .line 194
    :cond_8b
    :goto_8b
    throw v1
.end method

.method public loadResourceFromContainerAsset(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 10
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

    if-nez v0, :cond_23

    .line 132
    const-string v2, "No assets found in package"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 133
    return-object v1

    .line 135
    :cond_23
    move-object v2, v1

    .line 137
    .local v2, "is":Ljava/io/InputStream;
    :try_start_24
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_7a

    move-object v2, v3

    .line 141
    nop

    .line 144
    :try_start_2a
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
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4e} :catch_57
    .catchall {:try_start_2a .. :try_end_4e} :catchall_55

    .line 149
    nop

    .line 155
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 158
    goto :goto_54

    .line 156
    :catch_53
    move-exception v1

    .line 158
    :goto_54
    return-object v5

    .line 154
    .end local v3    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "outputByteArray":[B
    .end local v5    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catchall_55
    move-exception v1

    goto :goto_73

    .line 150
    :catch_57
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    :try_start_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when parsing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_55

    .line 152
    nop

    .line 155
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 158
    goto :goto_72

    .line 156
    :catch_71
    move-exception v4

    .line 158
    :goto_72
    return-object v1

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :goto_73
    nop

    .line 155
    :try_start_74
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    .line 158
    goto :goto_79

    .line 156
    :catch_78
    move-exception v3

    .line 158
    :goto_79
    throw v1

    .line 138
    :catch_7a
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
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v0, :cond_9d

    .line 74
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v0}, Lcom/google/tagmanager/LoadCallback;->startLoad()V

    .line 76
    const-string v0, "Start loading resource from disk ..."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v0, v1, :cond_26

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v0, v1, :cond_3e

    :cond_26
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 82
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v1, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 83
    return-void

    .line 86
    :cond_3e
    const/4 v0, 0x0

    .line 88
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_3f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_48} :catch_8f

    move-object v0, v1

    .line 93
    nop

    .line 96
    :try_start_4a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v1, "input":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    iget-object v2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->parseFrom([B)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/tagmanager/LoadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5f} :catch_65
    .catchall {:try_start_4a .. :try_end_5f} :catchall_63

    .line 104
    .end local v1    # "input":Ljava/io/ByteArrayOutputStream;
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_76

    goto :goto_75

    .line 103
    :catchall_63
    move-exception v1

    goto :goto_83

    .line 99
    :catch_65
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    :try_start_66
    const-string v2, "error reading resource from disk"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v3, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v2, v3}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_63

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_72
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 107
    :goto_75
    goto :goto_7d

    .line 105
    :catch_76
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v2, "error closing stream for reading resource from disk"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 110
    :goto_7d
    const-string v1, "Load resource from disk finished."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 111
    return-void

    .line 103
    :goto_83
    nop

    .line 104
    :try_start_84
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 107
    goto :goto_8e

    .line 105
    :catch_88
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "error closing stream for reading resource from disk"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 107
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8e
    throw v1

    .line 89
    :catch_8f
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "resource not on disk"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v3, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v2, v3}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 92
    return-void

    .line 72
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadResourceFromDiskInBackground()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/tagmanager/ResourceStorageImpl$1;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ResourceStorageImpl$1;-><init>(Lcom/google/tagmanager/ResourceStorageImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method saveResourceToDisk(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Z
    .registers 7
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v1

    .line 212
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_43

    move-object v0, v3

    .line 217
    nop

    .line 219
    :try_start_d
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_22
    .catchall {:try_start_d .. :try_end_14} :catchall_20

    .line 220
    const/4 v2, 0x1

    .line 227
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    .line 230
    goto :goto_1f

    .line 228
    :catch_19
    move-exception v3

    .line 229
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "error closing stream for writing resource to disk"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 230
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1f
    return v2

    .line 226
    :catchall_20
    move-exception v2

    goto :goto_37

    .line 221
    :catch_22
    move-exception v3

    .line 222
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_23
    const-string v4, "Error writing resource to disk. Removing resource from disk."

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_20

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 230
    goto :goto_36

    .line 228
    :catch_2f
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "error closing stream for writing resource to disk"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 231
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 232
    :goto_36
    return v2

    .line 226
    :goto_37
    nop

    .line 227
    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 230
    goto :goto_42

    .line 228
    :catch_3c
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "error closing stream for writing resource to disk"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 230
    .end local v3    # "e":Ljava/io/IOException;
    :goto_42
    throw v2

    .line 213
    :catch_43
    move-exception v3

    .line 214
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Error opening resource file for writing"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 216
    return v2
.end method

.method public saveResourceToDiskInBackground(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .registers 4
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
    .registers 2
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
