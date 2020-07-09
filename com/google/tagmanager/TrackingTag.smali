.class abstract Lcom/google/tagmanager/TrackingTag;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "TrackingTag.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "functionId"    # Ljava/lang/String;
    .param p2, "requiredKeys"    # [Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
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

    .line 34
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/TrackingTag;->evaluateTrackingTag(Ljava/util/Map;)V

    .line 35
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public abstract evaluateTrackingTag(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation
.end method

.method public isCacheable()Z
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method
