.class abstract Lcom/google/tagmanager/StringPredicate;
.super Lcom/google/tagmanager/Predicate;
.source "StringPredicate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "functionId"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Predicate;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected evaluateNoDefaultValues(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Map;)Z
    .registers 7
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

    .line 28
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "stringArg0":Ljava/lang/String;
    invoke-static {p2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "stringArg1":Ljava/lang/String;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v2

    if-eq v0, v2, :cond_1a

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_15

    goto :goto_1a

    :cond_15
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/tagmanager/StringPredicate;->evaluateString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    :goto_1b
    return v2
.end method

.method protected abstract evaluateString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation
.end method
