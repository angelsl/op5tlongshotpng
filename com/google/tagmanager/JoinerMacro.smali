.class Lcom/google/tagmanager/JoinerMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "JoinerMacro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/JoinerMacro$1;,
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
    .registers 1

    .prologue
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
    .registers 5

    .prologue
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
    .registers 5
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 110
    return-void

    .line 108
    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "escapeType"    # Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/JoinerMacro$EscapeType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p4, "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-direct {p0, p2, p3, p4}, Lcom/google/tagmanager/JoinerMacro;->escape(Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    return-void
.end method

.method private escape(Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)Ljava/lang/String;
    .registers 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "escapeType"    # Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/JoinerMacro$EscapeType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p3, "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    sget-object v4, Lcom/google/tagmanager/JoinerMacro$1;->$SwitchMap$com$google$tagmanager$JoinerMacro$EscapeType:[I

    invoke-virtual {p2}, Lcom/google/tagmanager/JoinerMacro$EscapeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_52

    .line 135
    :pswitch_b
    return-object p1

    .line 121
    :pswitch_c
    :try_start_c
    invoke-static {p1}, Lcom/google/tagmanager/ValueEscapeUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v4

    return-object v4

    .line 122
    :catch_11
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "Joiner: unsupported encoding"

    invoke-static {v4, v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return-object p1

    .line 127
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_19
    const-string/jumbo v4, "\\"

    const-string/jumbo v5, "\\\\"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 132
    return-object p1

    .line 128
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 129
    .local v0, "c":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "charAsString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    .line 118
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_c
        :pswitch_19
        :pswitch_b
    .end packed-switch
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/tagmanager/JoinerMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 25
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
    .line 39
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v21, Lcom/google/tagmanager/JoinerMacro;->ARG0:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 40
    .local v11, "input":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v11, :cond_63

    .line 44
    sget-object v21, Lcom/google/tagmanager/JoinerMacro;->ITEM_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 45
    .local v13, "itemSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v13, :cond_68

    const-string/jumbo v12, ""

    .line 49
    .local v12, "itemSeparator":Ljava/lang/String;
    :goto_1f
    sget-object v21, Lcom/google/tagmanager/JoinerMacro;->KEY_VALUE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 50
    .local v17, "keyValueSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v17, :cond_6d

    const-string/jumbo v16, "="

    .line 54
    .local v16, "keyValueSeparator":Ljava/lang/String;
    :goto_30
    sget-object v7, Lcom/google/tagmanager/JoinerMacro$EscapeType;->NONE:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    .line 55
    .local v7, "escapeType":Lcom/google/tagmanager/JoinerMacro$EscapeType;
    sget-object v21, Lcom/google/tagmanager/JoinerMacro;->ESCAPE:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 56
    .local v6, "escapeParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x0

    .line 57
    .local v4, "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    if-nez v6, :cond_72

    .line 74
    .end local v4    # "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :goto_41
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v19, "sb":Ljava/lang/StringBuilder;
    iget v0, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_138

    .line 101
    invoke-static {v11}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 103
    :cond_5a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v21

    return-object v21

    .line 41
    .end local v6    # "escapeParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v7    # "escapeType":Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .end local v12    # "itemSeparator":Ljava/lang/String;
    .end local v13    # "itemSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v16    # "keyValueSeparator":Ljava/lang/String;
    .end local v17    # "keyValueSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_63
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v21

    return-object v21

    .line 45
    .restart local v13    # "itemSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_68
    invoke-static {v13}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1f

    .line 50
    .restart local v12    # "itemSeparator":Ljava/lang/String;
    .restart local v17    # "keyValueSeparatorParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_6d
    invoke-static/range {v17 .. v17}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v16

    goto :goto_30

    .line 58
    .restart local v4    # "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v6    # "escapeParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v7    # "escapeType":Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .restart local v16    # "keyValueSeparator":Ljava/lang/String;
    :cond_72
    invoke-static {v6}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "escape":Ljava/lang/String;
    const-string/jumbo v21, "url"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_aa

    .line 61
    const-string/jumbo v21, "backslash"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_ad

    .line 69
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Joiner: unsupported escape type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v21

    return-object v21

    .line 60
    :cond_aa
    sget-object v7, Lcom/google/tagmanager/JoinerMacro$EscapeType;->URL:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    goto :goto_41

    .line 62
    :cond_ad
    sget-object v7, Lcom/google/tagmanager/JoinerMacro$EscapeType;->BACKSLASH:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    .line 63
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 64
    .restart local v4    # "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/google/tagmanager/JoinerMacro;->addTo(Ljava/util/Set;Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/google/tagmanager/JoinerMacro;->addTo(Ljava/util/Set;Ljava/lang/String;)V

    .line 67
    const/16 v21, 0x5c

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_41

    .line 77
    .end local v4    # "charsToBackslashEscape":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v5    # "escape":Ljava/lang/String;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :pswitch_cd
    const/4 v8, 0x1

    .line 78
    .local v8, "firstTime":Z
    iget-object v3, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v3, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v0, v3

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_d4
    move/from16 v0, v18

    if-ge v10, v0, :cond_5a

    aget-object v14, v3, v10

    .line 79
    .local v14, "itemVal":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v8, :cond_ed

    .line 82
    :goto_dc
    const/4 v8, 0x0

    .line 83
    invoke-static {v14}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 78
    add-int/lit8 v10, v10, 0x1

    goto :goto_d4

    .line 80
    :cond_ed
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dc

    .line 88
    .end local v3    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v8    # "firstTime":Z
    .end local v10    # "i$":I
    .end local v14    # "itemVal":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v18    # "len$":I
    :pswitch_f3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f4
    iget-object v0, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5a

    .line 89
    if-gtz v9, :cond_131

    .line 92
    :goto_103
    iget-object v0, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-static/range {v21 .. v21}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "key":Ljava/lang/String;
    iget-object v0, v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-static/range {v21 .. v21}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v20

    .line 94
    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15, v7, v4}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 95
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/google/tagmanager/JoinerMacro;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/tagmanager/JoinerMacro$EscapeType;Ljava/util/Set;)V

    .line 88
    add-int/lit8 v9, v9, 0x1

    goto :goto_f4

    .line 90
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_131
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_103

    .line 75
    nop

    :pswitch_data_138
    .packed-switch 0x2
        :pswitch_cd
        :pswitch_f3
    .end packed-switch
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
