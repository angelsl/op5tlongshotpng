.class Lcom/google/tagmanager/FutureApis;
.super Ljava/lang/Object;
.source "FutureApis.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static setOwnerOnlyReadWrite(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 40
    const/16 v0, 0x9

    .line 41
    .local v0, "minVersionForSetReadableWritable":I
    invoke-static {}, Lcom/google/tagmanager/FutureApis;->version()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 42
    return v2

    .line 44
    :cond_0
    const/4 v1, 0x1

    .line 45
    .local v1, "ownerOnly":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 49
    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 53
    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 54
    return v2
.end method

.method public static version()I
    .locals 4

    .line 26
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "version":I
    goto :goto_0

    .line 27
    .end local v0    # "version":I
    :catch_0
    move-exception v1

    .line 28
    .restart local v0    # "version":I
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 31
    .end local v1    # "ignored":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method
