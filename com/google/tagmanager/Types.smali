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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    .line 46
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    .line 47
    invoke-static {v6, v7}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

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
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static functionIdToValue(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
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
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getDefaultDouble()Ljava/lang/Double;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    return-object v0
.end method

.method public static getDefaultInt64()Ljava/lang/Long;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    return-object v0
.end method

.method public static getDefaultList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getDefaultMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultNumber()Lcom/google/tagmanager/TypedNumber;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object v0
.end method

.method public static getDefaultObject()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method public static getDefaultString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 301
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_d

    .line 304
    const-string/jumbo v0, "getDouble received non-Number"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 305
    const-wide/16 v0, 0x0

    return-wide v0

    .line 302
    :cond_d
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static getInt64(Ljava/lang/Object;)J
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 325
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_d

    .line 328
    const-string/jumbo v0, "getInt64 received non-Number"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 329
    const-wide/16 v0, 0x0

    return-wide v0

    .line 326
    :cond_d
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isDoubleableNumber(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 291
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_7

    .end local p0    # "o":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_6
    return v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v1, :cond_6

    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isDouble()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_6
.end method

.method private static isInt64ableNumber(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 314
    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .end local p0    # "o":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_6
    return v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_5

    instance-of v1, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v1, :cond_6

    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_6
.end method

.method public static varargs macroReferenceToValue(Ljava/lang/String;[I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 4
    .param p0, "macroName"    # Ljava/lang/String;
    .param p1, "escapings"    # [I

    .prologue
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
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 269
    return-object v0
.end method

.method public static objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 139
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .end local p0    # "o":Ljava/lang/Object;
    :goto_c
    return-object p0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_d
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_c
.end method

.method public static objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e
.end method

.method public static objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseInt64(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_e
.end method

.method public static objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-nez v0, :cond_19

    .line 113
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 115
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 118
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0

    .line 112
    :cond_19
    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    .line 114
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1c
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0

    .line 116
    :cond_25
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/TypedNumber;->numberWithDouble(Ljava/lang/Double;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 107
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    goto :goto_6
.end method

.method public static objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 19
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 184
    new-instance v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v11}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 185
    .local v11, "returnValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v2, 0x0

    .line 187
    .local v2, "containsRef":Z
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v15, :cond_56

    .line 189
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_59

    .line 192
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/util/List;

    if-nez v15, :cond_65

    .line 209
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/util/Map;

    if-nez v15, :cond_a7

    .line 230
    invoke-static/range {p0 .. p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_118

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_123

    .line 238
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/Boolean;

    if-nez v15, :cond_130

    .line 242
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Converting to Value from unknown object type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p0, :cond_13e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_46
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 244
    sget-object v15, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v15

    .line 188
    :cond_56
    check-cast p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    .line 190
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_59
    const/4 v15, 0x1

    iput v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 191
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 247
    :goto_62
    iput-boolean v2, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 248
    return-object v11

    .line 193
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_65
    const/4 v15, 0x2

    iput v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    move-object/from16 v10, p0

    .line 195
    check-cast v10, Ljava/util/List;

    .line 196
    .local v10, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v13, "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_8b

    .line 208
    const/4 v15, 0x0

    new-array v15, v15, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v13, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto :goto_62

    .line 197
    :cond_8b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 198
    .local v8, "listObject":Ljava/lang/Object;
    invoke-static {v8}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v9

    .line 199
    .local v9, "listValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v15, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eq v9, v15, :cond_9e

    .line 204
    if-eqz v2, :cond_a1

    :cond_99
    const/4 v2, 0x1

    .line 205
    :goto_9a
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 202
    :cond_9e
    sget-object v15, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v15

    .line 204
    :cond_a1
    iget-boolean v15, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v15, :cond_99

    const/4 v2, 0x0

    goto :goto_9a

    .line 210
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "listObject":Ljava/lang/Object;
    .end local v9    # "listValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_a7
    const/4 v15, 0x3

    iput v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 212
    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 213
    .local v3, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v7, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v14, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_e3

    .line 228
    const/4 v15, 0x0

    new-array v15, v15, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v7, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 229
    const/4 v15, 0x0

    new-array v15, v15, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto :goto_62

    .line 215
    :cond_e3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 216
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v6

    .line 217
    .local v6, "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v12

    .line 218
    .local v12, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v15, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-ne v6, v15, :cond_100

    .line 221
    :cond_fd
    sget-object v15, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v15

    .line 218
    :cond_100
    sget-object v15, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eq v12, v15, :cond_fd

    .line 223
    if-eqz v2, :cond_10e

    :cond_106
    const/4 v2, 0x1

    .line 224
    :goto_107
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 223
    :cond_10e
    iget-boolean v15, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v15, :cond_106

    iget-boolean v15, v12, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v15, :cond_106

    const/4 v2, 0x0

    goto :goto_107

    .line 233
    .end local v3    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v7    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v12    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v14    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_118
    const/4 v15, 0x1

    iput v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 234
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto/16 :goto_62

    .line 236
    :cond_123
    const/4 v15, 0x6

    iput v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    goto/16 :goto_62

    .line 239
    :cond_130
    const/16 v15, 0x8

    iput v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 240
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    iput-boolean v15, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    goto/16 :goto_62

    .line 242
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_13e
    const-string/jumbo v15, "null"

    goto/16 :goto_46
.end method

.method private static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 369
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 372
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object v0

    .line 368
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 370
    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 363
    .local v0, "result":Lcom/google/tagmanager/TypedNumber;
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-eq v0, v1, :cond_11

    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    goto :goto_10
.end method

.method private static parseInt64(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 356
    .local v0, "result":Lcom/google/tagmanager/TypedNumber;
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-eq v0, v1, :cond_11

    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    goto :goto_10
.end method

.method private static parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 345
    :try_start_0
    invoke-static {p0}, Lcom/google/tagmanager/TypedNumber;->numberWithString(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 346
    :catch_5
    move-exception v0

    .line 347
    .local v0, "longError":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to convert \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' to a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object v1
.end method

.method public static varargs templateToValue([Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 7
    .param p0, "tokens"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    const/4 v3, 0x0

    .line 273
    new-instance v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 274
    .local v2, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x7

    iput v4, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "containsRef":Z
    array-length v4, p0

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v4, p0

    if-lt v1, v4, :cond_16

    .line 281
    iput-boolean v0, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 283
    return-object v2

    .line 278
    :cond_16
    iget-object v4, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, p0, v1

    aput-object v5, v4, v1

    .line 279
    if-eqz v0, :cond_22

    :cond_1e
    const/4 v0, 0x1

    .line 277
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 279
    :cond_22
    aget-object v4, p0, v1

    iget-boolean v4, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v4, :cond_1e

    move v0, v3

    goto :goto_1f
.end method

.method public static valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static valueToDouble(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Double;
    .registers 2
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static valueToInt64(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Long;
    .registers 2
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;
    .registers 2
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0
.end method

.method public static valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .registers 15
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 378
    if-eqz p0, :cond_23

    .line 382
    iget v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    packed-switch v12, :pswitch_data_e4

    .line 457
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to convert a value of type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 458
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 379
    :cond_23
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 384
    :pswitch_26
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    return-object v12

    .line 387
    :pswitch_29
    new-instance v7, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_35
    if-lt v2, v4, :cond_38

    .line 398
    return-object v7

    .line 388
    :cond_38
    aget-object v10, v0, v2

    .line 389
    .local v10, "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v10}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v5

    .line 390
    .local v5, "o":Ljava/lang/Object;
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-eq v5, v12, :cond_48

    .line 395
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 393
    :cond_48
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 402
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v10    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_4b
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    iget-object v13, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v13, v13

    if-ne v12, v13, :cond_62

    .line 406
    new-instance v8, Ljava/util/LinkedHashMap;

    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    invoke-direct {v8, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 407
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    if-lt v1, v12, :cond_80

    .line 418
    return-object v8

    .line 403
    .end local v1    # "i":I
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_62
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Converting an invalid value to object: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 404
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 408
    .restart local v1    # "i":I
    .restart local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_80
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v12, v12, v1

    invoke-static {v12}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 409
    .local v3, "key":Ljava/lang/Object;
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v12, v12, v1

    invoke-static {v12}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v11

    .line 410
    .local v11, "value":Ljava/lang/Object;
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-ne v3, v12, :cond_97

    .line 413
    :cond_94
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 410
    :cond_97
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-eq v11, v12, :cond_94

    .line 415
    invoke-interface {v8, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 426
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "value":Ljava/lang/Object;
    :pswitch_a1
    const-string/jumbo v12, "Trying to convert a macro reference to object"

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 427
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 434
    :pswitch_aa
    const-string/jumbo v12, "Trying to convert a function id to object"

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 435
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 438
    :pswitch_b3
    iget-wide v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    return-object v12

    .line 441
    :pswitch_ba
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v6, "result":Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_c3
    if-lt v2, v4, :cond_ca

    .line 450
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 442
    :cond_ca
    aget-object v10, v0, v2

    .line 443
    .restart local v10    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v10}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, "s":Ljava/lang/String;
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    if-eq v9, v12, :cond_da

    .line 447
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    .line 445
    :cond_da
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v12

    .line 454
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "result":Ljava/lang/StringBuffer;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_dd
    iget-boolean v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 382
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_26
        :pswitch_29
        :pswitch_4b
        :pswitch_a1
        :pswitch_aa
        :pswitch_b3
        :pswitch_ba
        :pswitch_dd
    .end packed-switch
.end method

.method public static valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
