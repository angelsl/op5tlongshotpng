.class Lcom/google/tagmanager/JoinerMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "JoinerMacro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/JoinerMacro$EscapeType;
    }
.end annotation


# static fields
.field private static final ARG0:Ljava/lang/String;

.field private static final DEFAULT_ITEM_SEPARATOR:Ljava/lang/String; = ""

.field private static final DEFAULT_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final ESCAPE:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;

.field private static final ITEM_SEPARATOR:Ljava/lang/String;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->JOINER:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/JoinerMacro;->ID:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ARG0:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/JoinerMacro;->ARG0:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ITEM_SEPARATOR:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/JoinerMacro;->ITEM_SEPARATOR:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->KEY_VALUE_SEPARATOR:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/JoinerMacro;->KEY_VALUE_SEPARATOR:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ESCAPE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/JoinerMacro;->ESCAPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 31
    sget-object v0, Lcom/google/tagmanager/JoinerMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/JoinerMacro;->ARG0:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private addTo(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 107
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "escapeType"    # Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/JoinerMacro$EscapeType;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p4, "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-direct {p0, p2, p3, p4}, Lcom/google/tagmanager/JoinerMacro;->escape(Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    return-void
.end method

.method private escape(Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "escapeType"    # Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/JoinerMacro$EscapeType;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    .local p3, "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    sget-object v0, Lcom/google/tagmanager/JoinerMacro$1;->$SwitchMap$com$google$tagmanager$JoinerMacro$EscapeType:[I

    invoke-virtual {p2}, Lcom/google/tagmanager/JoinerMacro$EscapeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 135
    return-object p1

    .line 127
    :cond_0
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 129
    .local v2, "c":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "charAsString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 131
    .end local v2    # "c":Ljava/lang/Character;
    .end local v3    # "charAsString":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p1

    .line 121
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/google/tagmanager/ValueEscapeUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Joiner: unsupported encoding"

    invoke-static {v1, v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return-object p1
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/tagmanager/JoinerMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 16
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

    .line 39
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/tagmanager/JoinerMacro;->ARG0:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 40
    .local v2, "input":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v2, :cond_0

    .line 41
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    return-object v3

    .line 44
    :cond_0
    sget-object v3, Lcom/google/tagmanager/JoinerMacro;->ITEM_SEPARATOR:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 45
    .local v3, "itemSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 49
    .local v4, "itemSeparator":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/google/tagmanager/JoinerMacro;->KEY_VALUE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 50
    .local v5, "keyValueSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, "="

    .line 54
    .local v6, "keyValueSeparator":Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/google/tagmanager/JoinerMacro$EscapeType;->NONE:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    .line 55
    .local v7, "escapeType":Lcom/google/tagmanager/JoinerMacro$EscapeType;
    sget-object v8, Lcom/google/tagmanager/JoinerMacro;->ESCAPE:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 56
    .local v8, "escapeParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v9, 0x0

    .line 57
    .local v9, "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    if-eqz v8, :cond_5

    .line 58
    invoke-static {v8}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "escape":Ljava/lang/String;
    const-string v11, "url"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    sget-object v7, Lcom/google/tagmanager/JoinerMacro$EscapeType;->URL:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    goto :goto_2

    .line 61
    :cond_3
    const-string v11, "backslash"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 62
    sget-object v7, Lcom/google/tagmanager/JoinerMacro$EscapeType;->BACKSLASH:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    .line 63
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object v9, v11

    .line 64
    invoke-direct {v0, v9, v4}, Lcom/google/tagmanager/JoinerMacro;->addTo(Ljava/util/Set;Ljava/lang/String;)V

    .line 65
    invoke-direct {v0, v9, v6}, Lcom/google/tagmanager/JoinerMacro;->addTo(Ljava/util/Set;Ljava/lang/String;)V

    .line 67
    const/16 v11, 0x5c

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Joiner: unsupported escape type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v11

    return-object v11

    .line 74
    .end local v10    # "escape":Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v10, "sb":Ljava/lang/StringBuilder;
    iget v11, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_9

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eq v11, v12, :cond_6

    move v11, v13

    .line 101
    .local v11, "firstTime":Z
    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v10, v12, v7, v9}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    goto :goto_5

    .line 75
    .end local v11    # "firstTime":Z
    :cond_6
    move v11, v13

    .line 88
    .restart local v11    # "firstTime":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    iget-object v13, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v13, v13

    if-ge v12, v13, :cond_8

    .line 89
    if-lez v12, :cond_7

    .line 90
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_7
    iget-object v13, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v13, v13, v12

    invoke-static {v13}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "key":Ljava/lang/String;
    iget-object v14, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v14, v14, v12

    invoke-static {v14}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "value":Ljava/lang/String;
    invoke-direct {v0, v10, v13, v7, v9}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 95
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0, v10, v14, v7, v9}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 88
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 98
    .end local v12    # "i":I
    :cond_8
    goto :goto_5

    .line 77
    .end local v11    # "firstTime":Z
    :cond_9
    const/4 v11, 0x1

    .line 78
    .restart local v11    # "firstTime":Z
    iget-object v12, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v12, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_4
    if-ge v14, v13, :cond_b

    aget-object v15, v12, v14

    .line 79
    .local v15, "itemVal":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v11, :cond_a

    .line 80
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_a
    const/4 v11, 0x0

    .line 83
    invoke-static {v15}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1, v7, v9}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 78
    .end local v15    # "itemVal":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_4

    .line 85
    .end local v12    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    :cond_b
    nop

    .line 103
    .end local v11    # "firstTime":Z
    :goto_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    return-object v1
.end method

.method public isCacheable()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method
