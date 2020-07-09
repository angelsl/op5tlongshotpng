.class Lcom/google/tagmanager/ValueEscapeUtil;
.super Ljava/lang/Object;
.source "ValueEscapeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyEscaping(Lcom/google/tagmanager/ObjectAndStatic;I)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 2
    .param p1, "escaping"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;I)",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 39
    .local p0, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {p0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/ValueEscapeUtil;->isValidStringType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "Escaping can only be applied to strings."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 41
    return-object p0

    .line 43
    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Value Escaping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 49
    return-object p0

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/google/tagmanager/ValueEscapeUtil;->escapeUri(Lcom/google/tagmanager/ObjectAndStatic;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    return-object v0
.end method

.method static varargs applyEscapings(Lcom/google/tagmanager/ObjectAndStatic;[I)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 5
    .param p1, "escapings"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;[I)",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 17
    .local p0, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    move-object v0, p0

    .line 18
    .local v0, "escapedValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    move-object v1, p1

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 19
    .local v4, "escaping":I
    invoke-static {v0, v4}, Lcom/google/tagmanager/ValueEscapeUtil;->applyEscaping(Lcom/google/tagmanager/ObjectAndStatic;I)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 18
    .end local v4    # "escaping":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method

.method private static escapeUri(Lcom/google/tagmanager/ObjectAndStatic;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 54
    .local p0, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ValueEscapeUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "escapedString":Ljava/lang/String;
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 56
    .end local v0    # "escapedString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Escape URI: unsupported encoding"

    invoke-static {v1, v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-object p0
.end method

.method private static isValidStringType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 63
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 34
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
