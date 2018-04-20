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
            "Lcom/google/tagmanager/LoadCallback",
            "<",
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

    .prologue
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

    .prologue
    .line 245
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 246
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 247
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    .local v2, "reader":Ljava/io/Reader;
    :goto_16
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_22

    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 250
    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_16
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 202
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getResourceFile()Ljava/io/File;
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resource_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "google_tagmanager"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 241
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public loadExpandedResourceFromJsonAsset(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .registers 12
    .param p1, "assetFile"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loading default container from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 173
    iget-object v7, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 174
    .local v3, "assets":Landroid/content/res/AssetManager;
    if-eqz v3, :cond_30

    .line 178
    const/4 v6, 0x0

    .line 180
    .local v6, "is":Ljava/io/InputStream;
    :try_start_21
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 181
    invoke-direct {p0, v6}, Lcom/google/tagmanager/ResourceStorageImpl;->stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/JsonUtils;->expandedResourceFromJsonString(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_3d
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_66
    .catchall {:try_start_21 .. :try_end_2c} :catchall_93

    move-result-object v0

    .line 189
    .local v0, "-l_4_R":Ljava/lang/Object;
    if-nez v6, :cond_37

    .line 194
    :goto_2f
    return-object v0

    .line 175
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_30
    const-string/jumbo v7, "Looking for default JSON container in package, but no assets were found."

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 176
    return-object v9

    .line 191
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_37
    :try_start_37
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2f

    .line 192
    :catch_3b
    move-exception v7

    goto :goto_2f

    .line 182
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_3d
    move-exception v4

    .line 183
    .local v4, "e":Ljava/io/IOException;
    :try_start_3e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No asset file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " found (or errors reading it)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_93

    .line 184
    const/4 v1, 0x0

    .line 189
    .local v1, "-l_5_R":Ljava/lang/Object;
    if-nez v6, :cond_60

    .line 194
    :goto_5f
    return-object v1

    .line 191
    :cond_60
    :try_start_60
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_5f

    .line 192
    :catch_64
    move-exception v7

    goto :goto_5f

    .line 185
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_66
    move-exception v5

    .line 186
    .local v5, "e":Lorg/json/JSONException;
    :try_start_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error parsing JSON file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_67 .. :try_end_89} :catchall_93

    .line 187
    const/4 v1, 0x0

    .line 189
    .restart local v1    # "-l_5_R":Ljava/lang/Object;
    if-nez v6, :cond_8d

    .line 194
    :goto_8c
    return-object v1

    .line 191
    :cond_8d
    :try_start_8d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_8c

    .line 192
    :catch_91
    move-exception v7

    goto :goto_8c

    .line 189
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_93
    move-exception v2

    .local v2, "-l_7_R":Ljava/lang/Object;
    if-nez v6, :cond_97

    .line 194
    :goto_96
    throw v2

    .line 191
    :cond_97
    :try_start_97
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_96

    .line 192
    :catch_9b
    move-exception v7

    goto :goto_96
.end method

.method public loadResourceFromContainerAsset(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 14
    .param p1, "assetFile"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loading default container from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 130
    iget-object v9, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 131
    .local v3, "assets":Landroid/content/res/AssetManager;
    if-eqz v3, :cond_51

    .line 135
    const/4 v5, 0x0

    .line 137
    .local v5, "is":Ljava/io/InputStream;
    :try_start_21
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_58

    move-result-object v5

    .line 144
    :try_start_25
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v6, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {v5, v6}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 146
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 147
    .local v7, "outputByteArray":[B
    invoke-static {v7}, Lcom/google/analytics/containertag/proto/Serving$Resource;->parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v8

    .line 148
    .local v8, "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parsed default container: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4c} :catch_7a
    .catchall {:try_start_25 .. :try_end_4c} :catchall_99

    .line 149
    move-object v1, v8

    .line 155
    .local v1, "-l_7_R":Ljava/lang/Object;
    :try_start_4d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_78

    .line 158
    :goto_50
    return-object v8

    .line 132
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "outputByteArray":[B
    .end local v8    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_51
    const-string/jumbo v9, "No assets found in package"

    invoke-static {v9}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 133
    return-object v11

    .line 138
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_58
    move-exception v4

    .line 139
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No asset file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " found."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 140
    return-object v11

    .line 156
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "-l_7_R":Ljava/lang/Object;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outputByteArray":[B
    .restart local v8    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catch_78
    move-exception v9

    goto :goto_50

    .line 150
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "outputByteArray":[B
    .end local v8    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catch_7a
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_7b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error when parsing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_7b .. :try_end_92} :catchall_99

    .line 152
    const/4 v0, 0x0

    .line 155
    .local v0, "-l_5_R":Ljava/lang/Object;
    :try_start_93
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    .line 158
    :goto_96
    return-object v0

    .line 156
    :catch_97
    move-exception v9

    goto :goto_96

    .line 154
    .end local v0    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_99
    move-exception v2

    .line 155
    .local v2, "-l_9_R":Ljava/lang/Object;
    :try_start_9a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 158
    :goto_9d
    throw v2

    .line 156
    :catch_9e
    move-exception v9

    goto :goto_9d
.end method

.method loadResourceFromDisk()V
    .registers 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v5, :cond_54

    .line 74
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v5}, Lcom/google/tagmanager/LoadCallback;->startLoad()V

    .line 76
    const-string/jumbo v5, "Start loading resource from disk ..."

    invoke-static {v5}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v5

    sget-object v6, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v5, v6, :cond_5d

    :cond_1b
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 86
    :goto_2b
    const/4 v4, 0x0

    .line 88
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_2c
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "stream":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_35} :catch_72

    .line 96
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :try_start_35
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v3, "input":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v3}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->parseFrom([B)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4a} :catch_89
    .catchall {:try_start_35 .. :try_end_4a} :catchall_a3

    .line 104
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_81

    .line 110
    .end local v3    # "input":Ljava/io/ByteArrayOutputStream;
    :goto_4d
    const-string/jumbo v5, "Load resource from disk finished."

    invoke-static {v5}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 111
    return-void

    .line 72
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :cond_54
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "callback must be set before execute"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_5d
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v5

    sget-object v6, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v5, v6, :cond_1b

    goto :goto_2b

    .line 82
    :cond_6a
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v6, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 83
    return-void

    .line 89
    :catch_72
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "resource not on disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v6, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 92
    return-void

    .line 105
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "input":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_81
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "error closing stream for reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_4d

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/ByteArrayOutputStream;
    :catch_89
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_8a
    const-string/jumbo v5, "error reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v6, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_a3

    .line 104
    :try_start_97
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_4d

    .line 105
    :catch_9b
    move-exception v2

    .line 106
    const-string/jumbo v5, "error closing stream for reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_4d

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_a3
    move-exception v0

    .line 104
    .local v0, "-l_3_R":Ljava/lang/Object;
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 107
    :goto_a7
    throw v0

    .line 105
    :catch_a8
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "error closing stream for reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_a7
.end method

.method public loadResourceFromDiskInBackground()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/tagmanager/ResourceStorageImpl$1;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ResourceStorageImpl$1;-><init>(Lcom/google/tagmanager/ResourceStorageImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method saveResourceToDisk(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Z
    .registers 10
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v4

    .line 212
    .local v4, "file":Ljava/io/File;
    :try_start_6
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_18

    .line 219
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_28
    .catchall {:try_start_b .. :try_end_12} :catchall_3e

    .line 220
    const/4 v0, 0x1

    .line 227
    .local v0, "-l_4_I":I
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_20

    .line 230
    :goto_16
    const/4 v6, 0x1

    return v6

    .line 213
    .end local v0    # "-l_4_I":I
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_18
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "Error opening resource file for writing"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 216
    return v7

    .line 228
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "-l_4_I":I
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_20
    move-exception v3

    .line 229
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "error closing stream for writing resource to disk"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_16

    .line 221
    .end local v0    # "-l_4_I":I
    .end local v3    # "e":Ljava/io/IOException;
    :catch_28
    move-exception v3

    .line 222
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_29
    const-string/jumbo v6, "Error writing resource to disk. Removing resource from disk."

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_3e

    .line 227
    :try_start_32
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 232
    :goto_35
    return v7

    .line 228
    :catch_36
    move-exception v3

    .line 229
    const-string/jumbo v6, "error closing stream for writing resource to disk"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_35

    .line 226
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v1

    .line 227
    .local v1, "-l_6_R":Ljava/lang/Object;
    :try_start_3f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 230
    :goto_42
    throw v1

    .line 228
    :catch_43
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "error closing stream for writing resource to disk"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public saveResourceToDiskInBackground(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .registers 4
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .prologue
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
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "callback":Lcom/google/tagmanager/LoadCallback;, "Lcom/google/tagmanager/LoadCallback<Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;>;"
    iput-object p1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    .line 51
    return-void
.end method
