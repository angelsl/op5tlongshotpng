.class public Lcom/google/tagmanager/ExperimentMacroHelper;
.super Ljava/lang/Object;
.source "ExperimentMacroHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 5
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 34
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 35
    .local v3, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 34
    .end local v3    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public static handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .locals 1
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "supplemental"    # Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 24
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "supplemental missing experimentSupplemental"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 26
    return-void

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 29
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 30
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 31
    return-void
.end method

.method private static pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 5
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 40
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    .local v3, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3}, Lcom/google/tagmanager/ExperimentMacroHelper;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v4

    .line 42
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 40
    .end local v3    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method private static setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 17
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    .line 51
    .local v5, "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v6, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 52
    const-string v6, "GaExperimentRandom: No key"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 53
    move-object/from16 v16, v2

    goto/16 :goto_3

    .line 57
    :cond_0
    iget-object v6, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 59
    .local v6, "random":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Number;

    if-nez v7, :cond_1

    .line 60
    const/4 v7, 0x0

    .local v7, "randomValue":Ljava/lang/Long;
    goto :goto_1

    .line 63
    .end local v7    # "randomValue":Ljava/lang/Long;
    :cond_1
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    .line 64
    .local v7, "n":Ljava/lang/Number;
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 69
    .local v7, "randomValue":Ljava/lang/Long;
    :goto_1
    iget-wide v8, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 70
    .local v8, "minRandom":J
    iget-wide v10, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 71
    .local v10, "maxRandom":J
    iget-boolean v12, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v12, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-ltz v12, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-lez v12, :cond_3

    .line 73
    :cond_2
    cmp-long v12, v8, v10

    if-gtz v12, :cond_7

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    sub-long v14, v10, v8

    long-to-double v14, v14

    mul-double/2addr v12, v14

    long-to-double v14, v8

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 82
    :cond_3
    iget-object v12, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 85
    iget-object v12, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v12, v6}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    .line 87
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-wide v13, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_6

    .line 88
    const-string v13, "gtm"

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "lifetime"

    if-nez v14, :cond_4

    .line 89
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    move-object/from16 v16, v2

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .local v16, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-wide v1, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v14, v2

    invoke-static {v14}, Lcom/google/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 91
    .end local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 94
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 100
    .local v2, "gtmMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-wide v13, v5, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v2, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v2    # "gtmMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_2

    .line 102
    :cond_5
    const-string v2, "GaExperimentRandom: gtm not a map"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    .end local v1    # "o":Ljava/lang/Object;
    .end local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_6
    move-object/from16 v16, v2

    .line 108
    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :goto_2
    invoke-virtual {v0, v12}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_3

    .line 76
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_7
    move-object/from16 v16, v2

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const-string v1, "GaExperimentRandom: random range invalid"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 77
    nop

    .line 50
    .end local v5    # "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v6    # "random":Ljava/lang/Object;
    .end local v7    # "randomValue":Ljava/lang/Long;
    .end local v8    # "minRandom":J
    .end local v10    # "maxRandom":J
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 110
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v16    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_8
    return-void
.end method

.method private static valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .locals 3
    .param p0, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "valueAsObject":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a map value, ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return-object v1

    .line 119
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 120
    .local v1, "valueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-object v1
.end method
