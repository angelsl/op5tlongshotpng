.class Lcom/google/analytics/tracking/android/FutureApis;
.super Ljava/lang/Object;
.source "FutureApis.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static setOwnerOnlyReadWrite(Ljava/lang/String;)Z
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 40
    const/16 v0, 0x9

    .line 41
    .local v0, "minVersionForSetReadableWritable":I
    invoke-static {}, Lcom/google/analytics/tracking/android/FutureApis;->version()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_a

    .line 42
    return v2

    .line 44
    :cond_a
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
    .registers 3

    .line 27
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 31
    .local v0, "version":I
    goto :goto_1f

    .line 28
    .end local v0    # "version":I
    :catch_7
    move-exception v0

    .line 29
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "version":I
    :goto_1f
    return v0
.end method
