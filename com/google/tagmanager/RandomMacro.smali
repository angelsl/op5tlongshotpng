.class Lcom/google/tagmanager/RandomMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "RandomMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final MAX:Ljava/lang/String;

.field private static final MIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
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
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 20
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
    .line 33
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const-wide/16 v8, 0x0

    .line 34
    .local v8, "min":D
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 35
    .local v2, "max":D
    sget-object v14, Lcom/google/tagmanager/RandomMacro;->MIN:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 36
    .local v12, "minParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v14, Lcom/google/tagmanager/RandomMacro;->MAX:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v6, "maxParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v12, :cond_33

    .line 52
    :cond_1d
    :goto_1d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    sub-double v16, v2, v8

    mul-double v14, v14, v16

    add-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v14}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v14

    return-object v14

    .line 37
    :cond_33
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v14

    if-eq v12, v14, :cond_1d

    if-eqz v6, :cond_1d

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v14

    if-eq v6, v14, :cond_1d

    .line 39
    invoke-static {v12}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v13

    .line 40
    .local v13, "minValue":Lcom/google/tagmanager/TypedNumber;
    invoke-static {v6}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v7

    .line 41
    .local v7, "maxValue":Lcom/google/tagmanager/TypedNumber;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v14

    if-eq v13, v14, :cond_1d

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v14

    if-eq v7, v14, :cond_1d

    .line 42
    invoke-virtual {v13}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v10

    .line 43
    .local v10, "minDouble":D
    invoke-virtual {v7}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v4

    .line 44
    .local v4, "maxDouble":D
    cmpg-double v14, v10, v4

    if-gtz v14, :cond_1d

    .line 47
    move-wide v8, v10

    .line 48
    move-wide v2, v4

    goto :goto_1d
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
