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

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/google/tagmanager/DataLayer;)V
    .registers 6
    .param p1, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

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

    .line 37
    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultObject()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_1a

    .line 40
    :cond_9
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 42
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 44
    :cond_14
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 45
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 38
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1a
    :goto_1a
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private pushToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .registers 8
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 48
    if-eqz p1, :cond_32

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultObject()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_32

    .line 51
    :cond_9
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_12

    .line 53
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 56
    :cond_12
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 57
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 58
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_28

    .line 59
    goto :goto_19

    .line 62
    :cond_28
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    .line 63
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v5, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 64
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_19

    .line 65
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_31
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 49
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_32
    :goto_32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evaluateTrackingTag(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

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
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
