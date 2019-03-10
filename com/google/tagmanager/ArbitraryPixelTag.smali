.class Lcom/google/tagmanager/ArbitraryPixelTag;
.super Lcom/google/tagmanager/TrackingTag;
.source "ArbitraryPixelTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_PARAMS:Ljava/lang/String;

.field static final ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;

.field private static final UNREPEATABLE:Ljava/lang/String;

.field private static final URL:Ljava/lang/String;

.field private static final unrepeatableIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHitSenderProvider:Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->ARBITRARY_PIXEL:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ID:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->URL:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->URL:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ADDITIONAL_PARAMS:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ADDITIONAL_PARAMS:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->UNREPEATABLE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->UNREPEATABLE:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gtm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/tagmanager/ArbitraryPixelTag;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_unrepeatable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    return-void-no-barrier
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/google/tagmanager/ArbitraryPixelTag$1;

    invoke-direct {v0, p1}, Lcom/google/tagmanager/ArbitraryPixelTag$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/tagmanager/ArbitraryPixelTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hitSenderProvider"    # Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 55
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/ArbitraryPixelTag;->URL:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/TrackingTag;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/google/tagmanager/ArbitraryPixelTag;->mHitSenderProvider:Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;

    .line 57
    iput-object p1, p0, Lcom/google/tagmanager/ArbitraryPixelTag;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .line 41
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized idProcessed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "unrepeatableId"    # Ljava/lang/String;

    monitor-enter p0

    .line 119
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/ArbitraryPixelTag;->idInCache(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 120
    monitor-exit p0

    return v1

    .line 123
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/ArbitraryPixelTag;->idInSharedPreferences(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 125
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1a

    .line 126
    monitor-exit p0

    return v1

    .line 129
    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 118
    .end local p1    # "unrepeatableId":Ljava/lang/String;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/ArbitraryPixelTag;
    throw p1
.end method


# virtual methods
.method clearCache()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 140
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 141
    return-void-no-barrier
.end method

.method public evaluateTrackingTag(Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->UNREPEATABLE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->UNREPEATABLE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 64
    .local v0, "unrepeatableId":Ljava/lang/String;
    :goto_16
    if-eqz v0, :cond_1f

    .line 66
    invoke-direct {p0, v0}, Lcom/google/tagmanager/ArbitraryPixelTag;->idProcessed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 67
    return-void-no-barrier

    .line 71
    :cond_1f
    sget-object v1, Lcom/google/tagmanager/ArbitraryPixelTag;->URL:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 73
    .local v2, "initialUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 74
    .local v3, "uriBuilder":Landroid/net/Uri$Builder;
    sget-object v4, Lcom/google/tagmanager/ArbitraryPixelTag;->ADDITIONAL_PARAMS:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 75
    .local v4, "additionalParamsList":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v4, :cond_c0

    .line 76
    invoke-static {v4}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v5

    .line 77
    .local v5, "l":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/List;

    if-nez v6, :cond_62

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArbitraryPixel: additional params not a list: not sending partial hit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 80
    return-void-no-barrier

    .line 83
    :cond_62
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .line 84
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_69
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 85
    .local v8, "m":Ljava/lang/Object;
    instance-of v9, v8, Ljava/util/Map;

    if-nez v9, :cond_94

    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ArbitraryPixel: additional params contains non-map: not sending partial hit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 88
    return-void-no-barrier

    .line 91
    :cond_94
    move-object v9, v8

    check-cast v9, Ljava/util/Map;

    .line 92
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bf

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 94
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_9f

    .line 96
    .end local v8    # "m":Ljava/lang/Object;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_bf
    goto :goto_69

    .line 99
    .end local v5    # "l":Ljava/lang/Object;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_c0
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "uri":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/tagmanager/ArbitraryPixelTag;->mHitSenderProvider:Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;

    invoke-interface {v6}, Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;->get()Lcom/google/tagmanager/HitSender;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/google/tagmanager/HitSender;->sendHit(Ljava/lang/String;)Z

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArbitraryPixel: url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 103
    if-eqz v0, :cond_fd

    .line 104
    const-class v6, Lcom/google/tagmanager/ArbitraryPixelTag;

    monitor-enter v6

    .line 105
    :try_start_ea
    sget-object v7, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v7, p0, Lcom/google/tagmanager/ArbitraryPixelTag;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/google/tagmanager/ArbitraryPixelTag;->ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

    const-string v9, "true"

    invoke-static {v7, v8, v0, v9}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    monitor-exit v6

    goto :goto_fd

    :catchall_fa
    move-exception v7

    monitor-exit v6
    :try_end_fc
    .catchall {:try_start_ea .. :try_end_fc} :catchall_fa

    throw v7

    .line 110
    :cond_fd
    :goto_fd
    return-void-no-barrier
.end method

.method idInCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "unrepeatableId"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 145
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method idInSharedPreferences(Ljava/lang/String;)Z
    .registers 5
    .param p1, "unrepeatableId"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/tagmanager/ArbitraryPixelTag;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/tagmanager/ArbitraryPixelTag;->ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
