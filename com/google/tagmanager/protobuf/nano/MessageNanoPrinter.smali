.class public final Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final MAX_STRING_LEN:I = 0xc8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "identifier"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v0, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 144
    .local v2, "currentChar":C
    if-nez v1, :cond_1a

    .line 145
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_30

    .line 146
    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 147
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_30

    .line 149
    :cond_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    .end local v2    # "currentChar":C
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 152
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 171
    .local v0, "strLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v1, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_3a

    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 174
    .local v4, "original":C
    const/16 v5, 0x20

    if-lt v4, v5, :cond_25

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_25

    const/16 v5, 0x22

    if-eq v4, v5, :cond_25

    const/16 v5, 0x27

    if-eq v4, v5, :cond_25

    .line 175
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 177
    :cond_25
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v4    # "original":C
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 180
    .end local v3    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static print(Lcom/google/tagmanager/protobuf/nano/MessageNano;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/tagmanager/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    .local p0, "message":Lcom/google/tagmanager/protobuf/nano/MessageNano;, "TT;"
    if-nez p0, :cond_5

    .line 57
    const-string v0, "null"

    return-object v0

    .line 60
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "buf":Ljava/lang/StringBuffer;
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1, v2, p0, v3, v0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1e} :catch_24

    .line 66
    nop

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :catch_24
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error printing proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .registers 24
    .param p0, "identifier"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "indentBuf"    # Ljava/lang/StringBuffer;
    .param p4, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 76
    move-object/from16 v2, p4

    const-class v3, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 77
    if-nez v0, :cond_13

    .line 80
    return-void

    .line 82
    :cond_13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v5, " <\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2b
    if-ge v8, v6, :cond_92

    aget-object v9, v5, v8

    .line 88
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 89
    .local v10, "modifiers":I
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "fieldName":Ljava/lang/String;
    and-int/lit8 v12, v10, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8d

    and-int/lit8 v12, v10, 0x8

    const/16 v13, 0x8

    if-eq v12, v13, :cond_8d

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8d

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 93
    goto :goto_8d

    .line 96
    :cond_53
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 97
    .local v12, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 99
    .local v13, "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_8a

    .line 100
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    .line 103
    .local v14, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_6d

    .line 104
    invoke-static {v11, v12, v13, v1, v2}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_89

    .line 106
    :cond_6d
    if-nez v13, :cond_71

    const/4 v15, 0x0

    goto :goto_75

    :cond_71
    invoke-static {v13}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    .line 107
    .local v15, "len":I
    :goto_75
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_77
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v7, v17

    if-ge v7, v15, :cond_89

    .line 108
    .end local v17    # "i":I
    .local v7, "i":I
    invoke-static {v13, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 109
    .local v4, "elem":Ljava/lang/Object;
    invoke-static {v11, v14, v4, v1, v2}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 107
    .end local v4    # "elem":Ljava/lang/Object;
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v4, p1

    goto :goto_77

    .line 112
    .end local v14    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "len":I
    .end local v16    # "i":I
    :cond_89
    :goto_89
    goto :goto_8d

    .line 113
    :cond_8a
    invoke-static {v11, v12, v13, v1, v2}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 86
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "modifiers":I
    .end local v11    # "fieldName":Ljava/lang/String;
    .end local v12    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "value":Ljava/lang/Object;
    :cond_8d
    :goto_8d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p1

    goto :goto_2b

    .line 116
    .end local v5    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "len$":I
    .end local v8    # "i$":I
    :cond_92
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const-string v5, "  "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v4, ">\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e2

    .line 120
    :cond_ad
    move-object/from16 v3, p0

    if-nez v0, :cond_b2

    .line 123
    return-void

    .line 125
    :cond_b2
    invoke-static/range {p0 .. p0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .end local p0    # "identifier":Ljava/lang/String;
    .local v3, "identifier":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_da

    .line 128
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "stringMessage":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .end local v4    # "stringMessage":Ljava/lang/String;
    goto :goto_dd

    .line 131
    :cond_da
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 133
    :goto_dd
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :goto_e2
    return-void
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 159
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_26

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    :cond_26
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
