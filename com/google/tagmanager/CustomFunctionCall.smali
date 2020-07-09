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
    .locals 1

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
    .locals 4
    .param p1, "functionCallEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

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
    .locals 1

    .line 38
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ADDITIONAL_PARAMS:Ljava/lang/String;

    return-object v0
.end method

.method public static getFunctionCallNameKey()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->FUNCTION_CALL_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .line 51
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/CustomFunctionCall;->FUNCTION_CALL_NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "functionCallName":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, "objectParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/google/tagmanager/CustomFunctionCall;->ADDITIONAL_PARAMS:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    .local v2, "additionalParamsValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v2, :cond_1

    .line 55
    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "additionalParamsObject":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_0

    .line 57
    const-string v4, "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map."

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    return-object v4

    .line 61
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    .line 62
    .local v4, "additionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 63
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 67
    .end local v3    # "additionalParamsObject":Ljava/lang/Object;
    .end local v4    # "additionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/tagmanager/CustomFunctionCall;->mFunctionCallEvaluator:Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

    invoke-interface {v3, v0, v1}, Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;->evaluate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Custom macro/tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " threw exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 72
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    return-object v3
.end method

.method public isCacheable()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method
