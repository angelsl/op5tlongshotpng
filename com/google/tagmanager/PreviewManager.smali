.class Lcom/google/tagmanager/PreviewManager;
.super Ljava/lang/Object;
.source "PreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PreviewManager$PreviewMode;
    }
.end annotation


# static fields
.field static final BASE_DEBUG_QUERY:Ljava/lang/String; = "&gtm_debug=x"

.field private static final CONTAINER_BASE_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&"

.field private static final CONTAINER_DEBUG_STRING_PATTERN:Ljava/lang/String; = ".*?&gtm_debug=x$"

.field private static final CONTAINER_PREVIEW_EXIT_URL_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

.field private static final CONTAINER_PREVIEW_URL_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

.field static final CTFE_URL_PATH_PREFIX:Ljava/lang/String; = "/r?"

.field private static sInstance:Lcom/google/tagmanager/PreviewManager;


# instance fields
.field private volatile mCTFEUrlPath:Ljava/lang/String;

.field private volatile mCTFEUrlQuery:Ljava/lang/String;

.field private volatile mContainerId:Ljava/lang/String;

.field private volatile mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewManager;->clear()V

    .line 55
    return-void
.end method

.method private getContainerId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "params":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method static getInstance()Lcom/google/tagmanager/PreviewManager;
    .registers 3

    .prologue
    .line 58
    const-class v0, Lcom/google/tagmanager/PreviewManager;

    .local v0, "-l_0_R":Ljava/lang/Object;
    const-class v2, Lcom/google/tagmanager/PreviewManager;

    monitor-enter v2

    .line 59
    :try_start_5
    sget-object v2, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    if-eqz v2, :cond_d

    .line 63
    :goto_9
    sget-object v2, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    monitor-exit v0

    return-object v2

    .line 60
    :cond_d
    new-instance v2, Lcom/google/tagmanager/PreviewManager;

    invoke-direct {v2}, Lcom/google/tagmanager/PreviewManager;-><init>()V

    sput-object v2, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    goto :goto_9

    .line 64
    :catchall_15
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getQueryWithoutDebugParameter(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gtm_debug=x"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 131
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 132
    iput-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    .line 135
    return-void
.end method

.method getCTFEUrlDebugQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    return-object v0
.end method

.method getCTFEUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    return-object v0
.end method

.method declared-synchronized setPreviewData(Landroid/net/Uri;)Z
    .registers 8
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "uriStr":Ljava/lang/String;
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_e} :catch_3a
    .catchall {:try_start_4 .. :try_end_e} :catchall_94

    move-result-object v1

    .line 75
    :try_start_f
    const-string/jumbo v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 82
    const-string/jumbo v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid preview uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_94

    monitor-exit p0

    .line 94
    return v4

    .line 71
    :catch_3a
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    monitor-exit p0

    .line 73
    return v4

    .line 76
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Container preview url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v2, ".*?&gtm_debug=x$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 80
    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 97
    :goto_61
    invoke-direct {p0, p1}, Lcom/google/tagmanager/PreviewManager;->getQueryWithoutDebugParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v3, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v2, v3, :cond_cb

    .line 100
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/r?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    .line 103
    :goto_85
    iget-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/tagmanager/PreviewManager;->getContainerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_3d .. :try_end_8d} :catchall_94

    monitor-exit p0

    .line 105
    return v5

    .line 78
    :cond_8f
    :try_start_8f
    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_94

    goto :goto_61

    .end local v1    # "uriStr":Ljava/lang/String;
    :catchall_94
    move-exception v2

    monitor-exit p0

    throw v2

    .line 83
    .restart local v1    # "uriStr":Ljava/lang/String;
    :cond_97
    :try_start_97
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/PreviewManager;->getContainerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_94

    move-result v2

    if-nez v2, :cond_a9

    monitor-exit p0

    .line 90
    return v4

    .line 84
    :cond_a9
    :try_start_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exit preview mode for container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 85
    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;
    :try_end_c9
    .catchall {:try_start_a9 .. :try_end_c9} :catchall_94

    monitor-exit p0

    .line 87
    return v5

    .line 99
    :cond_cb
    :try_start_cb
    iget-object v2, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v3, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_94

    if-eq v2, v3, :cond_6d

    goto :goto_85
.end method
