.class public Lcom/google/tagmanager/ExperimentMacroHelper;
.super Ljava/lang/Object;
.source "ExperimentMacroHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .registers 7
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 34
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 35
    .local v3, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 34
    .end local v3    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 37
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_12
    return-void-no-barrier
.end method

.method public static handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .registers 3
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "supplemental"    # Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 24
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v0, :cond_a

    .line 25
    const-string v0, "supplemental missing experimentSupplemental"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 26
    return-void-no-barrier

    .line 28
    :cond_a
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 29
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 30
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 31
    return-void-no-barrier
.end method

.method private static pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .registers 7
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 40
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 41
    .local v3, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3}, Lcom/google/tagmanager/ExperimentMacroHelper;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v4

    .line 42
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v4, :cond_11

    .line 43
    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 40
    .end local v3    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 46
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_14
    return-void-no-barrier
.end method

.method private static setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .registers 22
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    move-object/from16 v0, p0

    .line 50
    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_8
    if-ge v5, v3, :cond_de

    aget-object v6, v2, v5

    .line 51
    .local v6, "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v7, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v7, :cond_1d

    .line 52
    const-string v7, "GaExperimentRandom: No key"

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 53
    nop

    .line 50
    move-object/from16 v19, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    goto/16 :goto_d6

    .line 57
    :cond_1d
    iget-object v7, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 59
    .local v7, "random":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Number;

    if-nez v8, :cond_29

    .line 60
    const/4 v8, 0x0

    .local v8, "randomValue":Ljava/lang/Long;
    goto :goto_34

    .line 63
    .end local v8    # "randomValue":Ljava/lang/Long;
    :cond_29
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    .line 64
    .local v8, "n":Ljava/lang/Number;
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 69
    .local v8, "randomValue":Ljava/lang/Long;
    :goto_34
    iget-wide v9, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 70
    .local v9, "minRandom":J
    iget-wide v11, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 71
    .local v11, "maxRandom":J
    iget-boolean v13, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v13, :cond_52

    if-eqz v8, :cond_52

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-ltz v13, :cond_52

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v11

    if-lez v13, :cond_4f

    goto :goto_52

    .line 82
    :cond_4f
    move/from16 v16, v5

    goto :goto_6a

    .line 73
    :cond_52
    :goto_52
    cmp-long v13, v9, v11

    if-gtz v13, :cond_cb

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    move/from16 v16, v5

    sub-long v4, v11, v9

    .end local v5    # "i$":I
    .local v16, "i$":I
    long-to-double v4, v4

    mul-double/2addr v13, v4

    long-to-double v4, v9

    add-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 82
    :goto_6a
    iget-object v4, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 85
    iget-object v4, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 87
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-wide v13, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-lez v5, :cond_c4

    .line 88
    const-string v5, "gtm"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 89
    const-string v5, "gtm"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "lifetime"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v19, v2

    iget-wide v1, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .local v19, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v13, v2

    invoke-static {v13}, Lcom/google/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    .line 91
    .end local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_a2
    move-object/from16 v19, v2

    const/4 v15, 0x0

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const-string v1, "gtm"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_be

    .line 94
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 100
    .local v2, "gtmMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v5, "lifetime"

    iget-wide v13, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v2, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v2    # "gtmMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_c7

    .line 102
    :cond_be
    const-string v2, "GaExperimentRandom: gtm not a map"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_c7

    .line 108
    .end local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_c4
    move-object/from16 v19, v2

    const/4 v15, 0x0

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :goto_c7
    invoke-virtual {v0, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v7    # "random":Ljava/lang/Object;
    .end local v8    # "randomValue":Ljava/lang/Long;
    .end local v9    # "minRandom":J
    .end local v11    # "maxRandom":J
    goto :goto_d6

    .line 76
    .end local v16    # "i$":I
    .end local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v5    # "i$":I
    .restart local v6    # "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .restart local v7    # "random":Ljava/lang/Object;
    .restart local v8    # "randomValue":Ljava/lang/Long;
    .restart local v9    # "minRandom":J
    .restart local v11    # "maxRandom":J
    :cond_cb
    move-object/from16 v19, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v5    # "i$":I
    .restart local v16    # "i$":I
    .restart local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const-string v1, "GaExperimentRandom: random range invalid"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 77
    nop

    .line 50
    .end local v6    # "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v7    # "random":Ljava/lang/Object;
    .end local v8    # "randomValue":Ljava/lang/Long;
    .end local v9    # "minRandom":J
    .end local v11    # "maxRandom":J
    :goto_d6
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "i$":I
    .restart local v5    # "i$":I
    move-object/from16 v2, v19

    move-object/from16 v1, p1

    goto/16 :goto_8

    .line 110
    .end local v3    # "len$":I
    .end local v5    # "i$":I
    .end local v19    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_de
    return-void-no-barrier
.end method

.method private static valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .registers 4
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

    if-nez v1, :cond_23

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
    :cond_23
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 120
    .local v1, "valueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-object v1
.end method
