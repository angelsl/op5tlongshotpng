.class Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;
.super Ljava/lang/Object;
.source "ScreenResolutionDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/DefaultProvider;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "c"    # Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static dropInstance()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_0_R":Ljava/lang/Object;
    monitor-enter v0

    .line 39
    const/4 v2, 0x0

    :try_start_4
    sput-object v2, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_8
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_0_R":Ljava/lang/Object;
    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v2, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    monitor-exit v0

    return-object v2

    .line 33
    :catchall_7
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 24
    :try_start_3
    sget-object v2, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    if-eqz v2, :cond_9

    .line 27
    :goto_7
    monitor-exit v0

    .line 28
    return-void

    .line 25
    :cond_9
    new-instance v2, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    goto :goto_7

    .line 27
    :catchall_11
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method protected getScreenResolutionString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 68
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    if-eqz p1, :cond_d

    .line 59
    const-string/jumbo v0, "&sr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 62
    return-object v1

    .line 57
    :cond_d
    return-object v1

    .line 60
    :cond_e
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getScreenResolutionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public providesField(Ljava/lang/String;)Z
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "&sr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
