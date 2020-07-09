.class Lcom/google/tagmanager/HashMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "HashMacro.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String;

.field private static final ARG0:Ljava/lang/String;

.field private static final DEFAULT_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final DEFAULT_INPUT_FORMAT:Ljava/lang/String; = "text"

.field private static final ID:Ljava/lang/String;

.field private static final INPUT_FORMAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->HASH:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/HashMacro;->ID:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ARG0:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/HashMacro;->ARG0:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ALGORITHM:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/HashMacro;->ALGORITHM:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->INPUT_FORMAT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/HashMacro;->INPUT_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 30
    sget-object v0, Lcom/google/tagmanager/HashMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/HashMacro;->ARG0:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/tagmanager/HashMacro;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private hash(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 75
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 10
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

    .line 38
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/HashMacro;->ARG0:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 39
    .local v0, "argumentParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 42
    :cond_0
    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "argument":Ljava/lang/String;
    sget-object v2, Lcom/google/tagmanager/HashMacro;->ALGORITHM:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 45
    .local v2, "algorithmParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v2, :cond_1

    const-string v3, "MD5"

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "algorithm":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/google/tagmanager/HashMacro;->INPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 50
    .local v4, "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const-string v5, "text"

    if-nez v4, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "inputFormat":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .local v5, "bytesToHash":[B
    goto :goto_2

    .line 57
    .end local v5    # "bytesToHash":[B
    :cond_3
    const-string v5, "base16"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    invoke-static {v1}, Lcom/google/tagmanager/Base16;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 65
    .restart local v5    # "bytesToHash":[B
    :goto_2
    :try_start_0
    invoke-direct {p0, v3, v5}, Lcom/google/tagmanager/HashMacro;->hash(Ljava/lang/String;[B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Base16;->encode([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hash: unknown algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    return-object v8

    .line 60
    .end local v5    # "bytesToHash":[B
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hash: unknown input format: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    return-object v5

    .line 40
    .end local v1    # "argument":Ljava/lang/String;
    .end local v2    # "algorithmParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v4    # "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v6    # "inputFormat":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    return-object v1
.end method

.method public isCacheable()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method
