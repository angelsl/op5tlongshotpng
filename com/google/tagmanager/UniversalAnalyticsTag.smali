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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultTransactionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

    .prologue
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

    .prologue
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

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string/jumbo v1, "0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string/jumbo v1, "false"

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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_3

    .line 147
    :goto_2
    return-void

    .line 145
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 5
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 90
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .registers 6
    .param p1, "analyticsFields"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    if-eqz p1, :cond_14

    .line 226
    invoke-direct {p0, p1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    .line 227
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1a

    .line 233
    const-string/jumbo v2, "&aip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "aip":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 237
    :cond_13
    :goto_13
    return-object v1

    .line 224
    .end local v0    # "aip":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2

    .line 228
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2

    .line 234
    .restart local v0    # "aip":Ljava/lang/String;
    :cond_20
    iget-object v2, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 235
    const-string/jumbo v2, "&aip"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method private getDataLayerString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v2, p1}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    return-object v1
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private getTransactionFields(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 246
    .local v1, "map":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v1, :cond_11

    .line 249
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    if-eqz v2, :cond_16

    .line 259
    :goto_e
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    return-object v2

    .line 247
    :cond_11
    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 250
    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "transactionId"

    const-string/jumbo v3, "&ti"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v2, "transactionAffiliation"

    const-string/jumbo v3, "&ta"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v2, "transactionTax"

    const-string/jumbo v3, "&tt"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v2, "transactionShipping"

    const-string/jumbo v3, "&ts"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v2, "transactionTotal"

    const-string/jumbo v3, "&tr"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v2, "transactionCurrency"

    const-string/jumbo v3, "&cu"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    goto :goto_e
.end method

.method private getTransactionItemFields(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 270
    .local v1, "map":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v1, :cond_11

    .line 273
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    if-eqz v2, :cond_16

    .line 283
    :goto_e
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    return-object v2

    .line 271
    :cond_11
    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 274
    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v0, "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "&in"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v2, "sku"

    const-string/jumbo v3, "&ic"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v2, "category"

    const-string/jumbo v3, "&iv"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v2, "price"

    const-string/jumbo v3, "&ip"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v2, "quantity"

    const-string/jumbo v3, "&iq"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v2, "currency"

    const-string/jumbo v3, "&cu"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    goto :goto_e
.end method

.method private getTransactionItems()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 119
    iget-object v5, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    const-string/jumbo v6, "transactionProducts"

    invoke-virtual {v5, v6}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_21

    .line 123
    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_22

    move-object v2, v0

    .line 129
    check-cast v2, Ljava/util/List;

    .line 131
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2b

    move-object v4, v0

    .line 139
    check-cast v4, Ljava/util/List;

    .line 140
    .local v4, "retData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-object v4

    .line 121
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "retData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_21
    return-object v7

    .line 124
    :cond_22
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "transactionProducts should be of type List."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/Map;

    if-nez v5, :cond_17

    .line 133
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Each element of transactionProducts should be of type Map."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private sendTransaction(Lcom/google/analytics/tracking/android/Tracker;Ljava/util/Map;)V
    .registers 20
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Tracker;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const-string/jumbo v15, "transactionId"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getDataLayerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 155
    .local v14, "transactionId":Ljava/lang/String;
    if-eqz v14, :cond_55

    .line 162
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v12, "sendQueue":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_10
    sget-object v15, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v11

    .line 166
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "&t"

    const-string/jumbo v16, "transaction"

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 169
    .local v13, "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_5c

    .line 172
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionItems()Ljava/util/List;

    move-result-object v10

    .line 175
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v10, :cond_86

    .line 193
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_51} :catch_7e

    move-result v15

    if-nez v15, :cond_101

    .line 200
    return-void

    .line 156
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "sendQueue":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_55
    const-string/jumbo v15, "Cannot find transactionId in data layer."

    invoke-static {v15}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 157
    return-void

    .line 169
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "sendQueue":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v13    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5c
    :try_start_5c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 170
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getDataLayerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v15, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_7d} :catch_7e

    goto :goto_3b

    .line 196
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_7e
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "Unable to send transaction"

    invoke-static {v15, v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    return-void

    .line 176
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_86
    :try_start_86
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 177
    .local v7, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "name"

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_da

    .line 182
    sget-object v15, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v9

    .line 183
    .local v9, "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "&t"

    const-string/jumbo v16, "item"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v15, "&ti"

    invoke-interface {v9, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionItemFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 187
    .local v8, "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_e1

    .line 190
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 178
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_da
    const-string/jumbo v15, "Unable to send transaction item hit due to missing \'name\' field."

    invoke-static {v15}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 179
    return-void

    .line 187
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 188
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v15, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    .line 193
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_101
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 194
    .local v4, "gaParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_10c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_10c} :catch_7e

    goto/16 :goto_4e
.end method

.method private valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .registers 9
    .param p1, "mapValue"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/Map;

    if-eqz v5, :cond_1f

    move-object v2, v3

    .line 211
    check-cast v2, Ljava/util/Map;

    .line 212
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    .local v4, "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_21

    .line 216
    return-object v4

    .line 208
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1f
    const/4 v5, 0x0

    return-object v5

    .line 213
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v4    # "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method


# virtual methods
.method public evaluateTrackingTag(Ljava/util/Map;)V
    .registers 5
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
    .line 95
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v1, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    const-string/jumbo v2, "_GTM_DEFAULT_TRACKER_"

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/TrackerProvider;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 97
    .local v0, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_PASS_THROUGH:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 99
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRACK_TRANSACTION:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 102
    const-string/jumbo v1, "Ignoring unknown tag."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 105
    :goto_1f
    iget-object v1, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/TrackerProvider;->close(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 106
    return-void

    .line 98
    :cond_25
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1f

    .line 100
    :cond_35
    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->sendTransaction(Lcom/google/analytics/tracking/android/Tracker;Ljava/util/Map;)V

    goto :goto_1f
.end method
