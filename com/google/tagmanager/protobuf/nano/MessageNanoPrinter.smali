.class public final Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final MAX_STRING_LEN:I = 0xc8


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v2, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_11

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 143
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 144
    .local v0, "currentChar":C
    if-eqz v1, :cond_23

    .line 146
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 145
    :cond_23
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 147
    :cond_2b
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 171
    .local v3, "strLen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-lt v1, v3, :cond_11

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 173
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 174
    .local v2, "original":C
    const/16 v4, 0x20

    if-ge v2, v4, :cond_30

    .line 177
    :cond_19
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "\\u%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 174
    :cond_30
    const/16 v4, 0x7e

    if-gt v2, v4, :cond_19

    const/16 v4, 0x22

    if-eq v2, v4, :cond_19

    const/16 v4, 0x27

    if-eq v2, v4, :cond_19

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method

.method public static print(Lcom/google/tagmanager/protobuf/nano/MessageNano;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/tagmanager/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "message":Lcom/google/tagmanager/protobuf/nano/MessageNano;, "TT;"
    if-eqz p0, :cond_20

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "buf":Ljava/lang/StringBuffer;
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2, v3, p0, v4, v0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1b} :catch_24

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 57
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_20
    const-string/jumbo v2, "null"

    return-object v2

    .line 64
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :catch_24
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error printing proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .registers 22
    .param p0, "identifier"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "indentBuf"    # Ljava/lang/StringBuffer;
    .param p4, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 76
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_3a

    .line 120
    if-eqz p2, :cond_f9

    .line 125
    invoke-static/range {p0 .. p0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_fa

    .line 131
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 133
    .end local p2    # "message":Ljava/lang/Object;
    :goto_31
    const-string/jumbo v15, "\n"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :goto_39
    return-void

    .line 77
    .restart local p2    # "message":Ljava/lang/Object;
    :cond_3a
    if-eqz p2, :cond_88

    .line 82
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string/jumbo v15, "  "

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string/jumbo v15, " <\n"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5f
    if-lt v9, v11, :cond_89

    .line 116
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    const-string/jumbo v16, "  "

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 117
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string/jumbo v16, ">\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 80
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :cond_88
    return-void

    .line 86
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    :cond_89
    aget-object v5, v2, v9

    .line 88
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 89
    .local v12, "modifiers":I
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "fieldName":Ljava/lang/String;
    and-int/lit8 v15, v12, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9e

    .line 86
    :cond_9b
    :goto_9b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 90
    :cond_9e
    and-int/lit8 v15, v12, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_9b

    const-string/jumbo v15, "_"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9b

    const-string/jumbo v15, "_"

    invoke-virtual {v6, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9b

    .line 96
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 97
    .local v7, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 99
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-nez v15, :cond_d0

    .line 113
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v6, v7, v14, v0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_9b

    .line 100
    :cond_d0
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 103
    .local v3, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v3, v15, :cond_ef

    .line 106
    if-eqz v14, :cond_f7

    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 107
    .local v10, "len":I
    :goto_de
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_df
    if-ge v8, v10, :cond_9b

    .line 108
    invoke-static {v14, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 109
    .local v4, "elem":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v6, v3, v4, v0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_df

    .line 104
    .end local v4    # "elem":Ljava/lang/Object;
    .end local v8    # "i":I
    .end local v10    # "len":I
    :cond_ef
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v6, v7, v14, v0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_9b

    .line 106
    :cond_f7
    const/4 v10, 0x0

    goto :goto_de

    .line 123
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "modifiers":I
    .end local v14    # "value":Ljava/lang/Object;
    :cond_f9
    return-void

    .line 128
    :cond_fa
    check-cast p2, Ljava/lang/String;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "stringMessage":Ljava/lang/String;
    const-string/jumbo v15, "\""

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_31
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x0

    .line 159
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    :cond_c
    :goto_c
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_c

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method
