.class Lcom/google/tagmanager/UniversalAnalyticsTag;
.super Lcom/google/tagmanager/TrackingTag;
.source "UniversalAnalyticsTag.java"


# static fields
.field private static final ACCOUNT:Ljava/lang/String;

.field private static final ANALYTICS_FIELDS:Ljava/lang/String;

.field private static final ANALYTICS_PASS_THROUGH:Ljava/lang/String;

.field private static final DEFAULT_TRACKING_ID:Ljava/lang/String; = "_GTM_DEFAULT_TRACKER_"

.field private static final ID:Ljava/lang/String;

.field private static final TRACK_TRANSACTION:Ljava/lang/String;

.field private static final TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

.field private static final TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

.field private static defaultItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultTransactionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;

.field private final mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

.field private final mTurnOffAnonymizeIpValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->UNIVERSAL_ANALYTICS:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ACCOUNT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ACCOUNT:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ANALYTICS_PASS_THROUGH:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_PASS_THROUGH:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ANALYTICS_FIELDS:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->TRACK_TRANSACTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRACK_TRANSACTION:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->TRANSACTION_DATALAYER_MAP:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->TRANSACTION_ITEM_DATALAYER_MAP:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

    .line 72
    new-instance v0, Lcom/google/tagmanager/TrackerProvider;

    invoke-direct {v0, p1}, Lcom/google/tagmanager/TrackerProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/UniversalAnalyticsTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/TrackerProvider;)V

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/TrackerProvider;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p3, "trackerProvider"    # Lcom/google/tagmanager/TrackerProvider;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 77
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/TrackingTag;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 79
    iput-object p3, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    .line 83
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string v1, "false"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "gaKey"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 144
    .local p1, "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_5

    .line 145
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 5
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 89
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 90
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_12

    :cond_a
    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_12
    return v1
.end method

.method private convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .registers 6
    .param p1, "analyticsFields"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    if-nez p1, :cond_8

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 226
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v0

    .line 227
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_14

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1

    .line 233
    :cond_14
    const-string v1, "&aip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "aip":Ljava/lang/String;
    if-eqz v1, :cond_2f

    iget-object v2, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 235
    const-string v2, "&aip"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2f
    return-object v0
.end method

.method private getDataLayerString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "data":Ljava/lang/Object;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private getTransactionFields(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 246
    .local v0, "map":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_f

    .line 247
    invoke-direct {p0, v0}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 249
    :cond_f
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    if-nez v1, :cond_44

    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "transactionId"

    const-string v3, "&ti"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "transactionAffiliation"

    const-string v3, "&ta"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "transactionTax"

    const-string v3, "&tt"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v2, "transactionShipping"

    const-string v3, "&ts"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "transactionTotal"

    const-string v3, "&tr"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "transactionCurrency"

    const-string v3, "&cu"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sput-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    .line 259
    .end local v1    # "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_44
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    return-object v1
.end method

.method private getTransactionItemFields(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 270
    .local v0, "map":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_f

    .line 271
    invoke-direct {p0, v0}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 273
    :cond_f
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    if-nez v1, :cond_44

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v1, "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "name"

    const-string v3, "&in"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "sku"

    const-string v3, "&ic"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v2, "category"

    const-string v3, "&iv"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "price"

    const-string v3, "&ip"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v2, "quantity"

    const-string v3, "&iq"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v2, "currency"

    const-string v3, "&cu"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sput-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    .line 283
    .end local v1    # "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_44
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    return-object v1
.end method

.method private getTransactionItems()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    const-string v1, "transactionProducts"

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "data":Ljava/lang/Object;
    if-nez v0, :cond_c

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_c
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_32

    .line 129
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 131
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_26

    .line 136
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_17

    .line 133
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Each element of transactionProducts should be of type Map."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2e
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 140
    .local v2, "retData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-object v2

    .line 124
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "retData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "transactionProducts should be of type List."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendTransaction(Lcom/google/analytics/tracking/android/Tracker;Ljava/util/Map;)V
    .registers 16
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Tracker;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p2, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const-string v0, "transactionId"

    invoke-direct {p0, v0}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getDataLayerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "transactionId":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 156
    const-string v1, "Cannot find transactionId in data layer."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 157
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 162
    :cond_e
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v1, "sendQueue":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_13
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v2}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v2

    .line 166
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "&t"

    const-string v4, "transaction"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-direct {p0, p2}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 169
    .local v3, "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 170
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getDataLayerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/google/tagmanager/UniversalAnalyticsTag;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_32

    .line 172
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_52
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct {p0}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionItems()Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v4, :cond_c1

    .line 176
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 177
    .local v6, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "name"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_79

    .line 178
    const-string v7, "Unable to send transaction item hit due to missing \'name\' field."

    invoke-static {v7}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 179
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 182
    :cond_79
    sget-object v7, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v7}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v7

    .line 183
    .local v7, "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "&t"

    const-string v9, "item"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v8, "&ti"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-direct {p0, p2}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionItemFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 187
    .local v8, "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_9d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 188
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v7, v11, v12}, Lcom/google/tagmanager/UniversalAnalyticsTag;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_9d

    .line 190
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_bd
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v6    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5f

    .line 193
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_c1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 194
    .local v6, "gaParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, v6}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_d4} :catch_d7

    .line 195
    .end local v6    # "gaParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_c5

    .line 199
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_d5
    nop

    .line 200
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 196
    :catch_d7
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Unable to send transaction"

    invoke-static {v3, v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .registers 9
    .param p1, "mapValue"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_a

    .line 208
    const/4 v1, 0x0

    return-object v1

    .line 211
    :cond_a
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 212
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    .local v2, "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 214
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_1a

    .line 216
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3a
    return-object v2
.end method


# virtual methods
.method public evaluateTrackingTag(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    const-string v1, "_GTM_DEFAULT_TRACKER_"

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/TrackerProvider;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 97
    .local v0, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_PASS_THROUGH:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 98
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    goto :goto_31

    .line 99
    :cond_20
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRACK_TRANSACTION:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->sendTransaction(Lcom/google/analytics/tracking/android/Tracker;Ljava/util/Map;)V

    goto :goto_31

    .line 102
    :cond_2c
    const-string v1, "Ignoring unknown tag."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 105
    :goto_31
    iget-object v1, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/TrackerProvider;->close(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 106
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
