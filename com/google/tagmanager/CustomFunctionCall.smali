.class Lcom/google/tagmanager/CustomFunctionCall;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "CustomFunctionCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_PARAMS:Ljava/lang/String;

.field private static final FUNCTION_CALL_NAME:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;


# instance fields
.field private final mFunctionCallEvaluator:Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->FUNCTION_CALL:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ID:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->FUNCTION_CALL_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/CustomFunctionCall;->FUNCTION_CALL_NAME:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ADDITIONAL_PARAMS:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ADDITIONAL_PARAMS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V
    .registers 6
    .param p1, "functionCallEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

    .prologue
    .line 42
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/CustomFunctionCall;->FUNCTION_CALL_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/google/tagmanager/CustomFunctionCall;->mFunctionCallEvaluator:Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

    .line 44
    return-void
.end method

.method public static getAdditionalParamsKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ADDITIONAL_PARAMS:Ljava/lang/String;

    return-object v0
.end method

.method public static getFunctionCallNameKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->FUNCTION_CALL_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v8, Lcom/google/tagmanager/CustomFunctionCall;->FUNCTION_CALL_NAME:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v8}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "functionCallName":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v7, "objectParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v8, Lcom/google/tagmanager/CustomFunctionCall;->ADDITIONAL_PARAMS:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    .local v2, "additionalParamsValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v2, :cond_26

    .line 67
    :cond_1b
    :try_start_1b
    iget-object v8, p0, Lcom/google/tagmanager/CustomFunctionCall;->mFunctionCallEvaluator:Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

    invoke-interface {v8, v5, v7}, Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;->evaluate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_60

    move-result-object v8

    return-object v8

    .line 55
    :cond_26
    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "additionalParamsObject":Ljava/lang/Object;
    instance-of v8, v1, Ljava/util/Map;

    if-eqz v8, :cond_55

    move-object v0, v1

    .line 61
    check-cast v0, Ljava/util/Map;

    .line 62
    .local v0, "additionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 63
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 57
    .end local v0    # "additionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_55
    const-string/jumbo v8, "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map."

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    return-object v8

    .line 69
    .end local v1    # "additionalParamsObject":Ljava/lang/Object;
    :catch_60
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Custom macro/tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " threw exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    return-object v8
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
