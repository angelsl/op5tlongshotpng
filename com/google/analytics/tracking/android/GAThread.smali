.class Lcom/google/analytics/tracking/android/GAThread;
.super Ljava/lang/Thread;
.source "GAThread.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsThread;


# static fields
.field static final API_VERSION:Ljava/lang/String; = "1"

.field private static final CLIENT_VERSION:Ljava/lang/String; = "ma3.0.2"

.field private static final MAX_SAMPLE_RATE:I = 0x64

.field private static final SAMPLE_RATE_MODULO:I = 0x2710

.field private static final SAMPLE_RATE_MULTIPLIER:I = 0x64

.field private static sInstance:Lcom/google/analytics/tracking/android/GAThread;


# instance fields
.field private volatile mClientId:Ljava/lang/String;

.field private volatile mClosed:Z

.field private volatile mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mDisabled:Z

.field private volatile mInstallCampaign:Ljava/lang/String;

.field private volatile mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    const-string/jumbo v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    .line 68
    if-nez p1, :cond_1a

    .line 71
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    .line 73
    :goto_16
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->start()V

    .line 74
    return-void

    .line 69
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    goto :goto_16
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/ServiceProxy;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "proxy"    # Lcom/google/analytics/tracking/android/ServiceProxy;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    const-string/jumbo v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    .line 79
    if-nez p1, :cond_1c

    .line 82
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    .line 84
    :goto_16
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    .line 85
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->start()V

    .line 86
    return-void

    .line 80
    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    goto :goto_16
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z
    .registers 3
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillAppParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->getUrlScheme(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/GAThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    return-object v0
.end method

.method private fillAppParameters(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    move-result-object v0

    .line 238
    .local v0, "appFieldsProvider":Lcom/google/analytics/tracking/android/DefaultProvider;
    const-string/jumbo v1, "&an"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/DefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&an"

    invoke-static {p1, v2, v1}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v1, "&av"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/DefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&av"

    invoke-static {p1, v2, v1}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v1, "&aid"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/DefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&aid"

    invoke-static {p1, v2, v1}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, "&aiid"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/DefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&aiid"

    invoke-static {p1, v2, v1}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "&v"

    const-string/jumbo v2, "1"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method static getAndClearCampaign(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 291
    :try_start_1
    const-string/jumbo v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 296
    .local v3, "input":Ljava/io/FileInputStream;
    const/16 v6, 0x2000

    new-array v4, v6, [B

    .line 297
    .local v4, "inputBytes":[B
    const/4 v6, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 298
    .local v5, "readLen":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-gtz v6, :cond_42

    .line 306
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 307
    const-string/jumbo v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 308
    if-lez v5, :cond_52

    .line 312
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V

    .line 313
    .local v0, "campaignString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Campaign found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    .line 314
    return-object v0

    .line 301
    .end local v0    # "campaignString":Ljava/lang/String;
    :cond_42
    const-string/jumbo v6, "Too much campaign data, ignoring it."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 303
    const-string/jumbo v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 304
    return-object v8

    .line 309
    :cond_52
    const-string/jumbo v6, "Campaign file is empty."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_58} :catch_59
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_58} :catch_61

    .line 310
    return-object v8

    .line 316
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v4    # "inputBytes":[B
    .end local v5    # "readLen":I
    :catch_59
    move-exception v1

    .line 318
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "No campaign data found."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    .line 319
    return-object v8

    .line 320
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_61
    move-exception v2

    .line 323
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Error reading campaign data."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 325
    return-object v8
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    if-eqz v0, :cond_7

    .line 62
    :goto_4
    sget-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    return-object v0

    .line 60
    :cond_7
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    goto :goto_4
.end method

.method private getUrlScheme(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 180
    const-string/jumbo v0, "https:"

    return-object v0

    .line 175
    :cond_d
    const-string/jumbo v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/Utils;->safeParseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "http:"

    :goto_20
    return-object v0

    :cond_21
    const-string/jumbo v0, "https:"

    goto :goto_20
.end method

.method static hashClientIdForSampling(Ljava/lang/String;)I
    .registers 7
    .param p0, "clientId"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 217
    const/4 v2, 0x1

    .line 218
    .local v2, "hashVal":I
    const/4 v3, 0x0

    .line 223
    .local v3, "lefMost7":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 233
    :cond_8
    return v2

    .line 224
    :cond_9
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "charPos":I
    :goto_10
    if-ltz v0, :cond_8

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 227
    .local v1, "curChar":C
    shl-int/lit8 v4, v2, 0x6

    const v5, 0xfffffff

    and-int/2addr v4, v5

    add-int/2addr v4, v1

    shl-int/lit8 v5, v1, 0xe

    add-int v2, v4, v5

    .line 228
    const/high16 v4, 0xfe00000

    and-int v3, v2, v4

    .line 229
    if-nez v3, :cond_2a

    .line 225
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 229
    :cond_2a
    shr-int/lit8 v4, v3, 0x15

    xor-int/2addr v2, v4

    goto :goto_27
.end method

.method private isSampledOut(Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/4 v8, 0x0

    .line 185
    const-string/jumbo v4, "&sf"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 188
    const-string/jumbo v4, "&sf"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 189
    .local v2, "sampleRate":D
    cmpl-double v4, v2, v6

    if-ltz v4, :cond_20

    .line 190
    return v8

    .line 186
    .end local v2    # "sampleRate":D
    :cond_1f
    return v8

    .line 194
    .restart local v2    # "sampleRate":D
    :cond_20
    const-string/jumbo v4, "&cid"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "clientId":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->hashClientIdForSampling(Ljava/lang/String;)I

    move-result v4

    rem-int/lit16 v4, v4, 0x2710

    int-to-double v4, v4

    mul-double/2addr v6, v2

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5b

    .line 197
    const-string/jumbo v4, "&t"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_57

    const-string/jumbo v4, "&t"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .line 198
    .local v1, "hitType":Ljava/lang/String;
    :goto_48
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    const-string/jumbo v5, "%s hit sampled out"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 199
    return v9

    .line 197
    .end local v1    # "hitType":Ljava/lang/String;
    :cond_57
    const-string/jumbo v1, "unknown"

    goto :goto_48

    .line 201
    :cond_5b
    return v8
.end method

.method private printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 330
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 332
    .local v1, "stream":Ljava/io/PrintStream;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 333
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 334
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method public clearHits()V
    .registers 2

    .prologue
    .line 259
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$3;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread$3;-><init>(Lcom/google/analytics/tracking/android/GAThread;)V

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method close()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    .line 412
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->interrupt()V

    .line 413
    return-void
.end method

.method public dispatch()V
    .registers 2

    .prologue
    .line 248
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$2;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread$2;-><init>(Lcom/google/analytics/tracking/android/GAThread;)V

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 406
    return-object p0
.end method

.method protected init()V
    .registers 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceProxy;->createService()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string/jumbo v2, "&_v"

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "appendVersion"

    const-string/jumbo v4, "ma3.0.2"

    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string/jumbo v2, "&qt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "appendQueueTime"

    invoke-direct {v1, v3, v2, v6}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string/jumbo v2, "&z"

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "appendCacheBuster"

    invoke-direct {v1, v3, v2, v6}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method isDisabled()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    return v0
.end method

.method queueToThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 346
    const-wide/16 v4, 0x1388

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_27

    .line 355
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    if-eqz v3, :cond_2f

    .line 358
    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->init()V

    .line 367
    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    move-result-object v3

    const-string/jumbo v4, "&cid"

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;

    .line 368
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAThread;->getAndClearCampaign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_22} :catch_39

    .line 376
    :cond_22
    :goto_22
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    if-eqz v3, :cond_5e

    .line 397
    return-void

    .line 347
    :catch_27
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "sleep interrupted in GAThread initialize"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_6

    .line 356
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2f
    :try_start_2f
    new-instance v3, Lcom/google/analytics/tracking/android/GAServiceProxy;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_a

    .line 369
    :catch_39
    move-exception v2

    .line 370
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error initializing the GAThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/GAThread;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v3, "Google Analytics will not start up."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 374
    iput-boolean v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    goto :goto_22

    .line 382
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_5e
    :try_start_5e
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 383
    .local v1, "r":Ljava/lang/Runnable;
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    if-nez v3, :cond_22

    .line 384
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_6d} :catch_6e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_6d} :catch_77

    goto :goto_22

    .line 386
    .end local v1    # "r":Ljava/lang/Runnable;
    :catch_6e
    move-exception v0

    .line 387
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_6f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_76} :catch_77

    goto :goto_22

    .line 389
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_77
    move-exception v2

    .line 390
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on GAThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/GAThread;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v3, "Google Analytics is shutting down."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 394
    iput-boolean v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    goto :goto_22
.end method

.method public sendHit(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 116
    .local v2, "hitCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "&ht"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, "hitTime":Ljava/lang/String;
    if-nez v3, :cond_1b

    .line 125
    .end local v3    # "hitTime":Ljava/lang/String;
    :goto_10
    if-eqz v3, :cond_27

    .line 129
    :goto_12
    new-instance v7, Lcom/google/analytics/tracking/android/GAThread$1;

    invoke-direct {v7, p0, v2}, Lcom/google/analytics/tracking/android/GAThread$1;-><init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    invoke-virtual {p0, v7}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 161
    return-void

    .line 119
    .restart local v3    # "hitTime":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_24

    move-result-wide v4

    .local v4, "ht":J
    goto :goto_10

    .line 120
    .end local v4    # "ht":J
    :catch_24
    move-exception v6

    .line 122
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_10

    .line 126
    .end local v3    # "hitTime":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "currentTimeMs":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "&ht"

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method public setForceLocalDispatch()V
    .registers 2

    .prologue
    .line 269
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$4;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread$4;-><init>(Lcom/google/analytics/tracking/android/GAThread;)V

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method
