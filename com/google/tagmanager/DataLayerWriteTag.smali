.class Lcom/google/tagmanager/DataLayerWriteTag;
.super Lcom/google/tagmanager/TrackingTag;
.source "DataLayerWriteTag.java"


# static fields
.field private static final CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;

.field private static final VALUE:Ljava/lang/String;


# instance fields
.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->DATA_LAYER_WRITE:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->VALUE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->VALUE:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/DataLayer;)V
    .registers 6
    .param p1, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

    .prologue
    .line 26
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/DataLayerWriteTag;->VALUE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/TrackingTag;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 28
    return-void
.end method

.method private clearPersistent(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .registers 4
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 37
    if-nez p1, :cond_3

    .line 38
    :cond_2
    return-void

    .line 37
    :cond_3
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultObject()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 40
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 44
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 45
    return-void

    .line 42
    :cond_19
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private pushToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .registers 8
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 48
    if-nez p1, :cond_3

    .line 49
    :cond_2
    return-void

    .line 48
    :cond_3
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultObject()Ljava/lang/Object;

    move-result-object v5

    if-eq p1, v5, :cond_2

    .line 51
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_1f

    move-object v1, v3

    .line 56
    check-cast v1, Ljava/util/List;

    .line 57
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_20

    .line 65
    return-void

    .line 53
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1f
    return-void

    .line 57
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_18

    move-object v2, v4

    .line 62
    check-cast v2, Ljava/util/Map;

    .line 63
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v5, v2}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_18
.end method


# virtual methods
.method public evaluateTrackingTag(Ljava/util/Map;)V
    .registers 3
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
    .line 32
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerWriteTag;->pushToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 33
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerWriteTag;->clearPersistent(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 34
    return-void
.end method
