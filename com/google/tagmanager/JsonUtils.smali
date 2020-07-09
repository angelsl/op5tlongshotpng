.class Lcom/google/tagmanager/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static expandedResourceFromJsonString(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 6
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/tagmanager/JsonUtils;->jsonObjectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 29
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    move-result-object v1

    .line 30
    .local v1, "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 33
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/containertag/common/Key;->FUNCTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/tagmanager/ConstantMacro;->getFunctionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/tagmanager/Types;->functionIdToValue(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v3

    invoke-static {}, Lcom/google/tagmanager/ConstantMacro;->getValueKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v2

    return-object v2
.end method

.method static jsonObjectToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_3

    .line 60
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    .line 64
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/JsonUtils;->jsonObjectToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_0
    return-object v1

    .line 74
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-object p0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSON nulls are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSONArrays are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static jsonObjectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/google/tagmanager/JsonUtils;->jsonObjectToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method
