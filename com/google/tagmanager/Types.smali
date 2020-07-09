.class Lcom/google/tagmanager/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static DEFAULT_BOOLEAN:Ljava/lang/Boolean;

.field private static DEFAULT_DOUBLE:Ljava/lang/Double;

.field private static DEFAULT_INT64:Ljava/lang/Long;

.field private static DEFAULT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

.field private static final DEFAULT_OBJECT:Ljava/lang/Object;

.field private static DEFAULT_STRING:Ljava/lang/String;

.field private static DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    .line 46
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    .line 47
    invoke-static {v1, v2}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    .line 52
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static functionIdToValue(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 257
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 258
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x5

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 259
    iput-object p0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 260
    return-object v0
.end method

.method public static getDefaultBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getDefaultDouble()Ljava/lang/Double;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    return-object v0
.end method

.method public static getDefaultInt64()Ljava/lang/Long;
    .locals 1

    .line 63
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    return-object v0
.end method

.method public static getDefaultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getDefaultMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultNumber()Lcom/google/tagmanager/TypedNumber;
    .locals 1

    .line 75
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object v0
.end method

.method public static getDefaultObject()Ljava/lang/Object;
    .locals 1

    .line 59
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method public static getDefaultString()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 91
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 301
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 304
    :cond_0
    const-string v0, "getDouble received non-Number"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 305
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getInt64(Ljava/lang/Object;)J
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 325
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 326
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 328
    :cond_0
    const-string v0, "getInt64 received non-Number"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 329
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static isDoubleableNumber(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 291
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isInt64ableNumber(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 314
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs macroReferenceToValue(Ljava/lang/String;[I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2
    .param p0, "macroName"    # Ljava/lang/String;
    .param p1, "escapings"    # [I

    .line 264
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 265
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 266
    iput-object p0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 268
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 269
    return-object v0
.end method

.method public static objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 139
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 133
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 124
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseInt64(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 111
    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    .line 112
    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/TypedNumber;

    return-object v0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/TypedNumber;->numberWithDouble(Ljava/lang/Double;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0

    .line 118
    :cond_2
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 107
    if-nez p0, :cond_0

    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 12
    .param p0, "o"    # Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 185
    .local v0, "returnValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x0

    .line 187
    .local v1, "containsRef":Z
    instance-of v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, p0

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v2

    .line 189
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 190
    iput v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 191
    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto/16 :goto_7

    .line 192
    :cond_1
    instance-of v2, p0, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 193
    const/4 v2, 0x2

    iput v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 195
    move-object v2, p0

    check-cast v2, Ljava/util/List;

    .line 196
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v5, "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 198
    .local v7, "listObject":Ljava/lang/Object;
    invoke-static {v7}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    .line 199
    .local v8, "listValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v9, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-ne v8, v9, :cond_2

    .line 202
    return-object v9

    .line 204
    :cond_2
    if-nez v1, :cond_4

    iget-boolean v9, v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v9, v3

    :goto_2
    move v1, v9

    .line 205
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v7    # "listObject":Ljava/lang/Object;
    .end local v8    # "listValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    goto :goto_0

    .line 208
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    new-array v3, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 209
    .end local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    goto/16 :goto_7

    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_c

    .line 210
    const/4 v2, 0x3

    iput v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 212
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 213
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 216
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v9

    .line 217
    .local v9, "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    .line 218
    .local v10, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v11, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eq v9, v11, :cond_a

    if-ne v10, v11, :cond_7

    goto :goto_6

    .line 223
    :cond_7
    if-nez v1, :cond_9

    iget-boolean v11, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v11, :cond_9

    iget-boolean v11, v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    move v11, v4

    goto :goto_5

    :cond_9
    :goto_4
    move v11, v3

    :goto_5
    move v1, v11

    .line 224
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9    # "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    goto :goto_3

    .line 221
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v9    # "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v10    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_a
    :goto_6
    sget-object v3, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v3

    .line 228
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9    # "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_b
    new-array v3, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 229
    new-array v3, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 230
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v5    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    goto :goto_7

    :cond_c
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 233
    iput v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto :goto_7

    .line 235
    :cond_d
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 236
    const/4 v2, 0x6

    iput v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 237
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    goto :goto_7

    .line 238
    :cond_e
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    .line 239
    const/16 v2, 0x8

    iput v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 240
    move-object v2, p0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 247
    :goto_7
    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 248
    return-object v0

    .line 242
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converting to Value from unknown object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_10

    const-string v3, "null"

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v2
.end method

.method private static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 367
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 369
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 372
    :cond_1
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 361
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 363
    .local v0, "result":Lcom/google/tagmanager/TypedNumber;
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static parseInt64(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 354
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 356
    .local v0, "result":Lcom/google/tagmanager/TypedNumber;
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 345
    :try_start_0
    invoke-static {p0}, Lcom/google/tagmanager/TypedNumber;->numberWithString(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "longError":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object v1
.end method

.method public static varargs templateToValue([Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 5
    .param p0, "tokens"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 273
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 274
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x7

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "containsRef":Z
    array-length v2, p0

    new-array v2, v2, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 278
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v4, p0, v2

    aput-object v4, v3, v2

    .line 279
    if-nez v1, :cond_1

    aget-object v3, p0, v2

    iget-boolean v3, v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v1, v3

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "i":I
    :cond_2
    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 283
    return-object v0
.end method

.method public static valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 174
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static valueToDouble(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Double;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 170
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static valueToInt64(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Long;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 166
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 162
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0
.end method

.method public static valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .locals 7
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 378
    if-nez p0, :cond_0

    .line 379
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0

    .line 382
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert a value of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0

    .line 454
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 441
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 443
    .local v4, "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v4}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "s":Ljava/lang/String;
    sget-object v6, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    .line 445
    sget-object v6, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v6

    .line 447
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    .end local v4    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 438
    .end local v0    # "result":Ljava/lang/StringBuffer;
    :pswitch_2
    iget-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 434
    :pswitch_3
    const-string v0, "Trying to convert a function id to object"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0

    .line 426
    :pswitch_4
    const-string v0, "Trying to convert a macro reference to object"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0

    .line 402
    :pswitch_5
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting an invalid value to object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0

    .line 406
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 407
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 408
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v2

    .line 409
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    .local v3, "value":Ljava/lang/Object;
    sget-object v4, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-eq v2, v4, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 415
    :cond_4
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 413
    .restart local v2    # "key":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5
    :goto_2
    sget-object v4, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v4

    .line 418
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_6
    return-object v0

    .line 387
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 389
    .restart local v4    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v4}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v5

    .line 390
    .local v5, "o":Ljava/lang/Object;
    sget-object v6, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-ne v5, v6, :cond_7

    .line 393
    return-object v6

    .line 395
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v4    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 398
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_8
    return-object v0

    .line 384
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :pswitch_7
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 158
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
