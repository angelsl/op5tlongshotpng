.class Lcom/google/tagmanager/RandomMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "RandomMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final MAX:Ljava/lang/String;

.field private static final MIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->RANDOM:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->MIN:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RandomMacro;->MIN:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->MAX:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RandomMacro;->MAX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 13
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

    .line 33
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const-wide/16 v0, 0x0

    .line 34
    .local v0, "min":D
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 35
    .local v2, "max":D
    sget-object v4, Lcom/google/tagmanager/RandomMacro;->MIN:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 36
    .local v4, "minParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v5, Lcom/google/tagmanager/RandomMacro;->MAX:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v5, "maxParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v6

    if-eq v4, v6, :cond_0

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 39
    invoke-static {v4}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v6

    .line 40
    .local v6, "minValue":Lcom/google/tagmanager/TypedNumber;
    invoke-static {v5}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v7

    .line 41
    .local v7, "maxValue":Lcom/google/tagmanager/TypedNumber;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v8

    if-eq v6, v8, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 42
    invoke-virtual {v6}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v8

    .line 43
    .local v8, "minDouble":D
    invoke-virtual {v7}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v10

    .line 44
    .local v10, "maxDouble":D
    cmpg-double v12, v8, v10

    if-gtz v12, :cond_0

    .line 47
    move-wide v0, v8

    .line 48
    move-wide v2, v10

    .line 52
    .end local v6    # "minValue":Lcom/google/tagmanager/TypedNumber;
    .end local v7    # "maxValue":Lcom/google/tagmanager/TypedNumber;
    .end local v8    # "minDouble":D
    .end local v10    # "maxDouble":D
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v2, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v6

    return-object v6
.end method

.method public isCacheable()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method
