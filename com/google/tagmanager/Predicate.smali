.class abstract Lcom/google/tagmanager/Predicate;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "Predicate.java"


# static fields
.field private static final ARG0:Ljava/lang/String;

.field private static final ARG1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ARG0:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Predicate;->ARG0:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ARG1:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Predicate;->ARG1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionId"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/tagmanager/Predicate;->ARG0:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/Predicate;->ARG1:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static getArg0Key()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/tagmanager/Predicate;->ARG0:Ljava/lang/String;

    return-object v0
.end method

.method public static getArg1Key()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/tagmanager/Predicate;->ARG1:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 8
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
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const/4 v3, 0x0

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 42
    sget-object v5, Lcom/google/tagmanager/Predicate;->ARG0:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 43
    .local v0, "arg0":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v5, Lcom/google/tagmanager/Predicate;->ARG1:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 44
    .local v1, "arg1":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v0, :cond_3f

    .line 47
    .local v3, "result":Z
    :cond_21
    :goto_21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    return-object v5

    .line 37
    .end local v0    # "arg0":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "arg1":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "result":Z
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 38
    .local v4, "v":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    if-ne v4, v5, :cond_9

    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    return-object v5

    .line 44
    .end local v4    # "v":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v0    # "arg0":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v1    # "arg1":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_3f
    if-eqz v1, :cond_21

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/tagmanager/Predicate;->evaluateNoDefaultValues(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Map;)Z

    move-result v3

    goto :goto_21
.end method

.method protected abstract evaluateNoDefaultValues(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
