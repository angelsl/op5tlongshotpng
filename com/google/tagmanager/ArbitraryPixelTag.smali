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
            "Ljava/util/Set",
            "<",
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

    .prologue
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

    const-string/jumbo v1, "gtm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/ArbitraryPixelTag;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_unrepeatable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
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

    .prologue
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

    .prologue
    .line 41
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized idProcessed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "unrepeatableId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 119
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/ArbitraryPixelTag;->idInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/ArbitraryPixelTag;->idInSharedPreferences(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    move-result v0

    if-nez v0, :cond_13

    monitor-exit p0

    .line 129
    return v1

    :cond_11
    monitor-exit p0

    .line 120
    return v2

    .line 125
    :cond_13
    :try_start_13
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    monitor-exit p0

    .line 126
    return v2

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method clearCache()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 141
    return-void
.end method

.method public evaluateTrackingTag(Ljava/util/Map;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v18, Lcom/google/tagmanager/ArbitraryPixelTag;->UNREPEATABLE:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_68

    const/4 v14, 0x0

    .line 64
    .local v14, "unrepeatableId":Ljava/lang/String;
    :goto_d
    if-nez v14, :cond_79

    .line 71
    :cond_f
    sget-object v18, Lcom/google/tagmanager/ArbitraryPixelTag;->URL:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v17

    .line 72
    .local v17, "url":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 73
    .local v9, "initialUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 74
    .local v16, "uriBuilder":Landroid/net/Uri$Builder;
    sget-object v18, Lcom/google/tagmanager/ArbitraryPixelTag;->ADDITIONAL_PARAMS:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 75
    .local v5, "additionalParamsList":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v5, :cond_82

    .line 99
    :cond_35
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tagmanager/ArbitraryPixelTag;->mHitSenderProvider:Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;->get()Lcom/google/tagmanager/HitSender;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lcom/google/tagmanager/HitSender;->sendHit(Ljava/lang/String;)Z

    .line 101
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ArbitraryPixel: url = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 103
    if-nez v14, :cond_114

    .line 110
    :goto_67
    return-void

    .line 62
    .end local v5    # "additionalParamsList":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v9    # "initialUri":Landroid/net/Uri;
    .end local v14    # "unrepeatableId":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    .end local v16    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v17    # "url":Ljava/lang/String;
    :cond_68
    sget-object v18, Lcom/google/tagmanager/ArbitraryPixelTag;->UNREPEATABLE:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    .line 66
    .restart local v14    # "unrepeatableId":Ljava/lang/String;
    :cond_79
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/tagmanager/ArbitraryPixelTag;->idProcessed(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 67
    return-void

    .line 76
    .restart local v5    # "additionalParamsList":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v9    # "initialUri":Landroid/net/Uri;
    .restart local v16    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v17    # "url":Ljava/lang/String;
    :cond_82
    invoke-static {v5}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v10

    .line 77
    .local v10, "l":Ljava/lang/Object;
    instance-of v0, v10, Ljava/util/List;

    move/from16 v18, v0

    if-eqz v18, :cond_d4

    move-object v11, v10

    .line 83
    check-cast v11, Ljava/util/List;

    .line 84
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 85
    .local v12, "m":Ljava/lang/Object;
    instance-of v0, v12, Ljava/util/Map;

    move/from16 v18, v0

    if-eqz v18, :cond_f4

    move-object v13, v12

    .line 91
    check-cast v13, Ljava/util/Map;

    .line 92
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_ae
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_93

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 94
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_ae

    .line 78
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12    # "m":Ljava/lang/Object;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_d4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ArbitraryPixel: additional params not a list: not sending partial hit: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 80
    return-void

    .line 86
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v12    # "m":Ljava/lang/Object;
    :cond_f4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ArbitraryPixel: additional params contains non-map: not sending partial hit: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 88
    return-void

    .line 104
    .end local v10    # "l":Ljava/lang/Object;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12    # "m":Ljava/lang/Object;
    .restart local v15    # "uri":Ljava/lang/String;
    :cond_114
    const-class v4, Lcom/google/tagmanager/ArbitraryPixelTag;

    .local v4, "-l_8_R":Ljava/lang/Object;
    const-class v18, Lcom/google/tagmanager/ArbitraryPixelTag;

    monitor-enter v18

    .line 105
    :try_start_119
    sget-object v18, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tagmanager/ArbitraryPixelTag;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/tagmanager/ArbitraryPixelTag;->ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

    const-string/jumbo v20, "true"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v14, v2}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    monitor-exit v4

    goto/16 :goto_67

    :catchall_137
    move-exception v3

    .local v3, "-l_14_R":Ljava/lang/Object;
    monitor-exit v4
    :try_end_139
    .catchall {:try_start_119 .. :try_end_139} :catchall_137

    throw v3
.end method

.method idInCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "unrepeatableId"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/google/tagmanager/ArbitraryPixelTag;->unrepeatableIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method idInSharedPreferences(Ljava/lang/String;)Z
    .registers 6
    .param p1, "unrepeatableId"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/tagmanager/ArbitraryPixelTag;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/tagmanager/ArbitraryPixelTag;->ARBITRARY_PIXEL_UNREPEATABLE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
