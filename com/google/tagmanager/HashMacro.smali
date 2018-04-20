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
    .registers 1

    .prologue
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
    .registers 5

    .prologue
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
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/tagmanager/HashMacro;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private hash(Ljava/lang/String;[B)[B
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
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
    .registers 12
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
    .line 38
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v8, Lcom/google/tagmanager/HashMacro;->ARG0:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 39
    .local v3, "argumentParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v3, :cond_f

    .line 40
    :cond_a
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    return-object v8

    .line 39
    :cond_f
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    if-eq v3, v8, :cond_a

    .line 42
    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "argument":Ljava/lang/String;
    sget-object v8, Lcom/google/tagmanager/HashMacro;->ALGORITHM:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 45
    .local v1, "algorithmParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v1, :cond_63

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "algorithm":Ljava/lang/String;
    :goto_27
    sget-object v8, Lcom/google/tagmanager/HashMacro;->INPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 50
    .local v7, "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v7, :cond_67

    invoke-static {v7}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "inputFormat":Ljava/lang/String;
    :goto_35
    const-string/jumbo v8, "text"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 57
    const-string/jumbo v8, "base16"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Hash: unknown input format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    return-object v8

    .line 45
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v6    # "inputFormat":Ljava/lang/String;
    .end local v7    # "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_63
    const-string/jumbo v0, "MD5"

    goto :goto_27

    .line 50
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v7    # "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_67
    const-string/jumbo v6, "text"

    goto :goto_35

    .line 56
    .restart local v6    # "inputFormat":Ljava/lang/String;
    :cond_6b
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 65
    .local v4, "bytesToHash":[B
    :goto_6f
    :try_start_6f
    invoke-direct {p0, v0, v4}, Lcom/google/tagmanager/HashMacro;->hash(Ljava/lang/String;[B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Base16;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :try_end_7a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_7a} :catch_81

    move-result-object v8

    return-object v8

    .line 58
    .end local v4    # "bytesToHash":[B
    :cond_7c
    invoke-static {v2}, Lcom/google/tagmanager/Base16;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .restart local v4    # "bytesToHash":[B
    goto :goto_6f

    .line 66
    :catch_81
    move-exception v5

    .line 67
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Hash: unknown algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v8

    return-object v8
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
