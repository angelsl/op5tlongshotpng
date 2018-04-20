.class Lcom/google/tagmanager/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ResourceUtil$1;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedResource;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedRule;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;,
        Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 717
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 718
    .local v1, "numBytes":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 721
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 719
    :cond_10
    return-void
.end method

.method private static expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .registers 15
    .param p0, "functionCall"    # Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .param p1, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p2, "expandedValues"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v1

    .line 642
    .local v1, "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-lt v3, v5, :cond_f

    .line 654
    invoke-virtual {v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v8

    return-object v8

    .line 642
    :cond_f
    aget v8, v0, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 643
    .local v2, "i":Ljava/lang/Integer;
    iget-object v8, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v10, "properties"

    invoke-static {v8, v9, v10}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 644
    .local v6, "p":Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v8, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget v9, v6, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    const-string/jumbo v10, "keys"

    invoke-static {v8, v9, v10}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 645
    .local v4, "key":Ljava/lang/String;
    iget v8, v6, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const-string/jumbo v9, "values"

    invoke-static {p2, v8, v9}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 647
    .local v7, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v8, Lcom/google/analytics/containertag/common/Key;->PUSH_AFTER_EVALUATE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v8}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 650
    invoke-virtual {v1, v4, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    .line 642
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 648
    :cond_4e
    invoke-virtual {v1, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->setPushAfterEvaluate(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    goto :goto_4b
.end method

.method private static expandRule(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .registers 15
    .param p0, "rule"    # Lcom/google/analytics/containertag/proto/Serving$Rule;
    .param p4, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            ")",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p2, "macros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p3, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    move-result-object v5

    .line 672
    .local v5, "ruleBuilder":Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-lt v2, v3, :cond_45

    .line 675
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v3, :cond_5b

    .line 679
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_14
    if-lt v2, v3, :cond_71

    .line 683
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1a
    if-lt v2, v3, :cond_87

    .line 687
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_20
    if-lt v2, v3, :cond_9e

    .line 691
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_26
    if-lt v2, v3, :cond_b5

    .line 695
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2c
    if-lt v2, v3, :cond_cc

    .line 699
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_32
    if-lt v2, v3, :cond_e3

    .line 703
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_38
    if-lt v2, v3, :cond_fa

    .line 707
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3e
    if-lt v2, v3, :cond_111

    .line 711
    invoke-virtual {v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    move-result-object v8

    return-object v8

    .line 672
    :cond_45
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 673
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addPositivePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 675
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_5b
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 676
    .restart local v1    # "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addNegativePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 679
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_71
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 680
    .local v7, "tagIndex":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 683
    .end local v7    # "tagIndex":Ljava/lang/Integer;
    :cond_87
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 684
    .local v6, "ruleNameIndex":Ljava/lang/Integer;
    iget-object v8, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 687
    .end local v6    # "ruleNameIndex":Ljava/lang/Integer;
    :cond_9e
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 688
    .restart local v7    # "tagIndex":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 687
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    .line 691
    .end local v7    # "tagIndex":Ljava/lang/Integer;
    :cond_b5
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 692
    .restart local v6    # "ruleNameIndex":Ljava/lang/Integer;
    iget-object v8, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    .line 695
    .end local v6    # "ruleNameIndex":Ljava/lang/Integer;
    :cond_cc
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 696
    .local v4, "macroIndex":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2c

    .line 699
    .end local v4    # "macroIndex":Ljava/lang/Integer;
    :cond_e3
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 700
    .restart local v6    # "ruleNameIndex":Ljava/lang/Integer;
    iget-object v8, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_32

    .line 703
    .end local v6    # "ruleNameIndex":Ljava/lang/Integer;
    :cond_fa
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 704
    .restart local v4    # "macroIndex":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    .line 707
    .end local v4    # "macroIndex":Ljava/lang/Integer;
    :cond_111
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 708
    .restart local v6    # "ruleNameIndex":Ljava/lang/Integer;
    iget-object v8, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3e
.end method

.method private static expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 24
    .param p0, "i"    # I
    .param p1, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p2, "expandedValues"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            "[",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 490
    .local p3, "pendingExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4c

    .line 497
    :goto_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    const-string/jumbo v19, "values"

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 498
    .local v16, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    aget-object v18, p2, p0

    if-nez v18, :cond_85

    .line 503
    const/4 v15, 0x0

    .line 504
    .local v15, "toAdd":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_204

    .line 577
    .end local v15    # "toAdd":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_3c
    :goto_3c
    if-eqz v15, :cond_1e7

    .line 580
    :goto_3e
    aput-object v15, p2, p0

    .line 581
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 582
    return-object v15

    .line 491
    .end local v16    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_4c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Value cycle detected.  Current value reference: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "  Previous value references: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    goto :goto_e

    .line 500
    .restart local v16    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_85
    aget-object v18, p2, p0

    return-object v18

    .line 508
    .restart local v15    # "toAdd":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_88
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v13

    .line 509
    .local v13, "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v15

    .line 510
    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 511
    const/4 v6, 0x0

    .line 512
    .local v6, "index":I
    iget-object v4, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v4, "arr$":[I
    array-length v9, v4

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v7, v6

    .end local v6    # "index":I
    .local v7, "index":I
    :goto_a9
    if-ge v5, v9, :cond_3c

    aget v10, v4, v5

    .line 513
    .local v10, "listIndex":I
    iget-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v10, v0, v1, v2}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v19

    aput-object v19, v18, v7

    .line 512
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_a9

    .line 520
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "index":I
    .end local v9    # "len$":I
    .end local v10    # "listIndex":I
    .end local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :pswitch_c3
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v15

    .line 521
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v13

    .line 522
    .restart local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_133

    .line 527
    :goto_e3
    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 528
    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 529
    const/4 v6, 0x0

    .line 530
    .restart local v6    # "index":I
    iget-object v4, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v4    # "arr$":[I
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_10f
    if-lt v5, v9, :cond_170

    .line 534
    const/4 v6, 0x0

    .line 535
    .end local v7    # "index":I
    .restart local v6    # "index":I
    iget-object v4, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v9, v4

    const/4 v5, 0x0

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_117
    if-ge v5, v9, :cond_3c

    aget v17, v4, v5

    .line 536
    .local v17, "valueIndex":I
    iget-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    move/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v19

    aput-object v19, v18, v7

    .line 535
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_117

    .line 523
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "index":I
    .end local v9    # "len$":I
    .end local v17    # "valueIndex":I
    :cond_133
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Uneven map keys ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ") and map values ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    goto/16 :goto_e3

    .line 530
    .restart local v4    # "arr$":[I
    .restart local v5    # "i$":I
    .restart local v7    # "index":I
    .restart local v9    # "len$":I
    :cond_170
    aget v8, v4, v5

    .line 531
    .local v8, "keyIndex":I
    iget-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v8, v0, v1, v2}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v19

    aput-object v19, v18, v7

    .line 530
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_10f

    .line 543
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "keyIndex":I
    .end local v9    # "len$":I
    .end local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :pswitch_188
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v15

    .line 544
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v13

    .line 547
    .restart local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v12

    .line 549
    .local v12, "macroNameValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v12}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v11

    .line 551
    .local v11, "macroName":Ljava/lang/String;
    iput-object v11, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    goto/16 :goto_3c

    .line 556
    .end local v11    # "macroName":Ljava/lang/String;
    .end local v12    # "macroNameValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :pswitch_1a8
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v15

    .line 557
    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v13

    .line 558
    .restart local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v0, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 559
    const/4 v6, 0x0

    .line 560
    .restart local v6    # "index":I
    iget-object v4, v13, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v4    # "arr$":[I
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_1c9
    if-ge v5, v9, :cond_3c

    aget v14, v4, v5

    .line 561
    .local v14, "templateIndex":I
    iget-object v0, v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v18, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v19

    aput-object v19, v18, v7

    .line 560
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1c9

    .line 573
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "index":I
    .end local v9    # "len$":I
    .end local v13    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .end local v14    # "templateIndex":I
    :pswitch_1e3
    move-object/from16 v15, v16

    goto/16 :goto_3c

    .line 578
    .end local v15    # "toAdd":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_1e7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 506
    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_1e3
        :pswitch_88
        :pswitch_c3
        :pswitch_188
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1a8
        :pswitch_1e3
    .end packed-switch
.end method

.method public static getExpandedResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .registers 14
    .param p0, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v11, v11

    new-array v2, v11, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    .local v2, "expandedValues":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v11, v11

    if-lt v3, v11, :cond_45

    .line 428
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    move-result-object v1

    .line 431
    .local v1, "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    const/4 v3, 0x0

    :goto_15
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v11, v11

    if-lt v3, v11, :cond_51

    .line 435
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v7, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    const/4 v3, 0x0

    :goto_20
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v11, v11

    if-lt v3, v11, :cond_5f

    .line 439
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v6, "macros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    const/4 v3, 0x0

    :goto_2b
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v11, v11

    if-lt v3, v11, :cond_6d

    .line 448
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_34
    if-lt v4, v5, :cond_7e

    .line 453
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->setVersion(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 454
    iget v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-virtual {v1, v11}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->setResourceFormatVersion(I)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 456
    invoke-virtual {v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v11

    return-object v11

    .line 425
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v1    # "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "macros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .end local v7    # "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .end local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    :cond_45
    new-instance v11, Ljava/util/HashSet;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v3, p0, v2, v11}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 433
    .restart local v1    # "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .restart local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    :cond_51
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v11, v11, v3

    invoke-static {v11, p0, v2, v3}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 437
    .restart local v7    # "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    :cond_5f
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v11, v11, v3

    invoke-static {v11, p0, v2, v3}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 441
    .restart local v6    # "macros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    :cond_6d
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v11, v11, v3

    invoke-static {v11, p0, v2, v3}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v10

    .line 443
    .local v10, "thisMacro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-virtual {v1, v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 444
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 448
    .end local v10    # "thisMacro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_7e
    aget-object v8, v0, v4

    .line 449
    .local v8, "r":Lcom/google/analytics/containertag/proto/Serving$Rule;
    invoke-static {v8, v9, v6, v7, p0}, Lcom/google/tagmanager/ResourceUtil;->expandRule(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_34
.end method

.method private static getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 4
    .param p0, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 590
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 591
    .local v0, "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    if-eqz v0, :cond_13

    .line 594
    :goto_a
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v1

    .line 592
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static getWithBoundsCheck(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "idx"    # I
    .param p2, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-gez p1, :cond_29

    .line 624
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 626
    :goto_24
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 623
    :cond_29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_24
.end method

.method private static getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "idx"    # I
    .param p2, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-gez p1, :cond_27

    .line 612
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 614
    :goto_24
    aget-object v0, p0, p1

    return-object v0

    .line 611
    :cond_27
    array-length v0, p0

    if-ge p1, v0, :cond_2

    goto :goto_24
.end method

.method private static logAndThrow(Ljava/lang/String;)V
    .registers 2
    .param p0, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 602
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 3
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 465
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 466
    .local v0, "result":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 467
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 468
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v1, :cond_18

    .line 471
    :goto_17
    return-object v0

    .line 469
    :cond_18
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    goto :goto_17
.end method
