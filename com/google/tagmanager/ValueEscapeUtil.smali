.class Lcom/google/tagmanager/ValueEscapeUtil;
.super Ljava/lang/Object;
.source "ValueEscapeUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyEscaping(Lcom/google/tagmanager/ObjectAndStatic;I)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 4
    .param p1, "escaping"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;I)",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {p0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/ValueEscapeUtil;->isValidStringType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 43
    packed-switch p1, :pswitch_data_34

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unsupported Value Escaping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 49
    return-object p0

    .line 40
    :cond_27
    const-string/jumbo v0, "Escaping can only be applied to strings."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 41
    return-object p0

    .line 45
    :pswitch_2e
    invoke-static {p0}, Lcom/google/tagmanager/ValueEscapeUtil;->escapeUri(Lcom/google/tagmanager/ObjectAndStatic;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    return-object v0

    .line 43
    nop

    :pswitch_data_34
    .packed-switch 0xc
        :pswitch_2e
    .end packed-switch
.end method

.method static varargs applyEscapings(Lcom/google/tagmanager/ObjectAndStatic;[I)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 7
    .param p1, "escapings"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;[I)",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    move-object v1, p0

    .line 18
    .local v1, "escapedValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, p1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-lt v3, v4, :cond_7

    .line 21
    return-object v1

    .line 18
    :cond_7
    aget v2, p1, v3

    .line 19
    .local v2, "escaping":I
    invoke-static {v1, v2}, Lcom/google/tagmanager/ValueEscapeUtil;->applyEscaping(Lcom/google/tagmanager/ObjectAndStatic;I)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private static escapeUri(Lcom/google/tagmanager/ObjectAndStatic;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/ValueEscapeUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "escapedString":Ljava/lang/String;
    new-instance v2, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v2

    .line 56
    .end local v1    # "escapedString":Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "Escape URI: unsupported encoding"

    invoke-static {v2, v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-object p0
.end method

.method private static isValidStringType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Z
    .registers 2
    .param p0, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 34
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
