.class abstract Lcom/google/tagmanager/NumberPredicate;
.super Lcom/google/tagmanager/Predicate;
.source "NumberPredicate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "functionId"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Predicate;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected evaluateNoDefaultValues(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Map;)Z
    .locals 3
    .param p1, "arg0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p2, "arg1"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation

    .line 29
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 30
    .local v0, "numberArg0":Lcom/google/tagmanager/TypedNumber;
    invoke-static {p2}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v1

    .line 31
    .local v1, "numberArg1":Lcom/google/tagmanager/TypedNumber;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v2

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/tagmanager/NumberPredicate;->evaluateNumber(Lcom/google/tagmanager/TypedNumber;Lcom/google/tagmanager/TypedNumber;Ljava/util/Map;)Z

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected abstract evaluateNumber(Lcom/google/tagmanager/TypedNumber;Lcom/google/tagmanager/TypedNumber;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/TypedNumber;",
            "Lcom/google/tagmanager/TypedNumber;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation
.end method
