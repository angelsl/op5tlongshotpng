.class Lcom/google/tagmanager/EncodeMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "EncodeMacro.java"


# static fields
.field private static final ARG0:Ljava/lang/String;

.field private static final DEFAULT_INPUT_FORMAT:Ljava/lang/String; = "text"

.field private static final DEFAULT_OUTPUT_FORMAT:Ljava/lang/String; = "base16"

.field private static final ID:Ljava/lang/String;

.field private static final INPUT_FORMAT:Ljava/lang/String;

.field private static final NO_PADDING:Ljava/lang/String;

.field private static final OUTPUT_FORMAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->ENCODE:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->ID:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ARG0:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->ARG0:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->NO_PADDING:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->NO_PADDING:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->INPUT_FORMAT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->INPUT_FORMAT:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->OUTPUT_FORMAT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->OUTPUT_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    sget-object v0, Lcom/google/tagmanager/EncodeMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/EncodeMacro;->ARG0:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/tagmanager/EncodeMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 14
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

    .line 36
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/EncodeMacro;->ARG0:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v0, "argumentParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "argument":Ljava/lang/String;
    sget-object v2, Lcom/google/tagmanager/EncodeMacro;->INPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 43
    .local v2, "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const-string v3, "text"

    if-nez v2, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "inputFormat":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/google/tagmanager/EncodeMacro;->OUTPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 47
    .local v5, "outputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const-string v6, "base16"

    if-nez v5, :cond_2

    move-object v7, v6

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "outputFormat":Ljava/lang/String;
    :goto_1
    sget-object v8, Lcom/google/tagmanager/EncodeMacro;->INPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 52
    .local v8, "inputFormatValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v9, 0x0

    .line 53
    .local v9, "flags":I
    sget-object v10, Lcom/google/tagmanager/EncodeMacro;->NO_PADDING:Ljava/lang/String;

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    .local v10, "noPaddingParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v10, :cond_3

    invoke-static {v10}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 55
    or-int/lit8 v9, v9, 0x1

    .line 58
    :cond_3
    const/4 v11, 0x0

    .line 60
    .local v11, "inputBytes":[B
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "base64url"

    const-string v13, "base64"

    if-eqz v3, :cond_4

    .line 61
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .end local v11    # "inputBytes":[B
    .local v3, "inputBytes":[B
    goto :goto_2

    .line 62
    .end local v3    # "inputBytes":[B
    .restart local v11    # "inputBytes":[B
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    invoke-static {v1}, Lcom/google/tagmanager/Base16;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .end local v11    # "inputBytes":[B
    .restart local v3    # "inputBytes":[B
    goto :goto_2

    .line 64
    .end local v3    # "inputBytes":[B
    .restart local v11    # "inputBytes":[B
    :cond_5
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    invoke-static {v1, v9}, Lcom/google/tagmanager/Base64Encoder;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .end local v11    # "inputBytes":[B
    .restart local v3    # "inputBytes":[B
    goto :goto_2

    .line 66
    .end local v3    # "inputBytes":[B
    .restart local v11    # "inputBytes":[B
    :cond_6
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 67
    or-int/lit8 v3, v9, 0x2

    invoke-static {v1, v3}, Lcom/google/tagmanager/Base64Encoder;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .end local v11    # "inputBytes":[B
    .restart local v3    # "inputBytes":[B
    :goto_2
    nop

    .line 77
    const/4 v11, 0x0

    .line 78
    .local v11, "encoded":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 79
    invoke-static {v3}, Lcom/google/tagmanager/Base16;->encode([B)Ljava/lang/String;

    move-result-object v6

    .end local v11    # "encoded":Ljava/lang/String;
    .local v6, "encoded":Ljava/lang/String;
    goto :goto_3

    .line 81
    .end local v6    # "encoded":Ljava/lang/String;
    .restart local v11    # "encoded":Ljava/lang/String;
    :cond_7
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 82
    invoke-static {v3, v9}, Lcom/google/tagmanager/Base64Encoder;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .end local v11    # "encoded":Ljava/lang/String;
    .restart local v6    # "encoded":Ljava/lang/String;
    goto :goto_3

    .line 83
    .end local v6    # "encoded":Ljava/lang/String;
    .restart local v11    # "encoded":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 84
    or-int/lit8 v6, v9, 0x2

    invoke-static {v3, v6}, Lcom/google/tagmanager/Base64Encoder;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 89
    .end local v11    # "encoded":Ljava/lang/String;
    .restart local v6    # "encoded":Ljava/lang/String;
    :goto_3
    invoke-static {v6}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v11

    return-object v11

    .line 86
    .end local v6    # "encoded":Ljava/lang/String;
    .restart local v11    # "encoded":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Encode: unknown output format: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v6

    return-object v6

    .line 69
    .end local v3    # "inputBytes":[B
    .local v11, "inputBytes":[B
    :cond_a
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encode: unknown input format: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Encode: invalid input:"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v6

    return-object v6

    .line 38
    .end local v1    # "argument":Ljava/lang/String;
    .end local v2    # "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "inputFormat":Ljava/lang/String;
    .end local v5    # "outputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v7    # "outputFormat":Ljava/lang/String;
    .end local v8    # "inputFormatValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v9    # "flags":I
    .end local v10    # "noPaddingParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v11    # "inputBytes":[B
    :cond_b
    :goto_4
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    return-object v1
.end method

.method public isCacheable()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method
