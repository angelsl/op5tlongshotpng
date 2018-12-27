.class Lcom/google/tagmanager/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ResourceUtil$ExpandedResource;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedRule;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;,
        Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .registers 1

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

    .line 715
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 717
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 718
    .local v1, "numBytes":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 719
    return-void

    .line 721
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 722
    .end local v1    # "numBytes":I
    goto :goto_4
.end method

.method private static expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .registers 13
    .param p0, "functionCall"    # Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .param p1, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p2, "expandedValues"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .line 640
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v0

    .line 642
    .local v0, "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v2, :cond_4a

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 643
    .local v4, "i":Ljava/lang/Integer;
    iget-object v5, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "properties"

    invoke-static {v5, v6, v7}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 644
    .local v5, "p":Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v6, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget v7, v5, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    const-string v8, "keys"

    invoke-static {v6, v7, v8}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 645
    .local v6, "key":Ljava/lang/String;
    iget v7, v5, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const-string v8, "values"

    invoke-static {p2, v7, v8}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 647
    .local v7, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v8, Lcom/google/analytics/containertag/common/Key;->PUSH_AFTER_EVALUATE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v8}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 648
    invoke-virtual {v0, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->setPushAfterEvaluate(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    goto :goto_47

    .line 650
    :cond_44
    invoke-virtual {v0, v6, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    .line 642
    .end local v4    # "i":Ljava/lang/Integer;
    .end local v5    # "p":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 654
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4a
    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v1

    return-object v1
.end method

.method private static expandRule(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .registers 13
    .param p0, "rule"    # Lcom/google/analytics/containertag/proto/Serving$Rule;
    .param p4, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            ")",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;"
        }
    .end annotation

    .line 670
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p2, "macros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p3, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    move-result-object v0

    .line 672
    .local v0, "ruleBuilder":Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i$":I
    :goto_9
    if-ge v4, v2, :cond_21

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 673
    .local v5, "i":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addPositivePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 672
    .end local v5    # "i":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 675
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_21
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_25
    if-ge v4, v2, :cond_3d

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 676
    .restart local v5    # "i":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addNegativePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 675
    .end local v5    # "i":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 679
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_3d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_41
    if-ge v4, v2, :cond_59

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 680
    .local v5, "tagIndex":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 679
    .end local v5    # "tagIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 683
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_59
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_5d
    if-ge v4, v2, :cond_75

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 684
    .local v5, "ruleNameIndex":Ljava/lang/Integer;
    iget-object v6, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 683
    .end local v5    # "ruleNameIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 687
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_75
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_79
    if-ge v4, v2, :cond_91

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 688
    .local v5, "tagIndex":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 687
    .end local v5    # "tagIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 691
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_91
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_95
    if-ge v4, v2, :cond_ad

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 692
    .local v5, "ruleNameIndex":Ljava/lang/Integer;
    iget-object v6, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 691
    .end local v5    # "ruleNameIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 695
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_ad
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_b1
    if-ge v4, v2, :cond_c9

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 696
    .local v5, "macroIndex":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 695
    .end local v5    # "macroIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 699
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_c9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_cd
    if-ge v4, v2, :cond_e5

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 700
    .local v5, "ruleNameIndex":Ljava/lang/Integer;
    iget-object v6, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 699
    .end local v5    # "ruleNameIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    .line 703
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_e5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    move v4, v3

    .restart local v4    # "i$":I
    :goto_e9
    if-ge v4, v2, :cond_101

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 704
    .local v5, "macroIndex":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 703
    .end local v5    # "macroIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e9

    .line 707
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_101
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v1    # "arr$":[I
    array-length v2, v1

    .restart local v2    # "len$":I
    .local v3, "i$":I
    :goto_104
    if-ge v3, v2, :cond_11c

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 708
    .local v4, "ruleNameIndex":Ljava/lang/Integer;
    iget-object v5, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    .line 707
    .end local v4    # "ruleNameIndex":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_104

    .line 711
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_11c
    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    move-result-object v1

    return-object v1
.end method

.method private static expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 16
    .param p0, "i"    # I
    .param p1, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p2, "expandedValues"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            "[",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
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

    .line 490
    .local p3, "pendingExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value cycle detected.  Current value reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Previous value references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 497
    :cond_30
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v1, "values"

    invoke-static {v0, p0, v1}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 498
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    aget-object v1, p2, p0

    if-eqz v1, :cond_41

    .line 500
    aget-object v1, p2, p0

    return-object v1

    .line 503
    :cond_41
    const/4 v1, 0x0

    .line 504
    .local v1, "toAdd":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    iget v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_14a

    goto/16 :goto_129

    .line 556
    :pswitch_51
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    .line 557
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    .line 558
    .local v2, "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "index":I
    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .local v5, "arr$":[I
    array-length v6, v5

    .local v3, "i$":I
    .local v6, "len$":I
    :goto_64
    if-ge v3, v6, :cond_76

    aget v7, v5, v3

    .line 561
    .local v7, "templateIndex":I
    iget-object v8, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v9, v4, 0x1

    .local v9, "index":I
    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    aput-object v10, v8, v4

    .line 560
    .end local v4    # "index":I
    .end local v7    # "templateIndex":I
    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_64

    .line 564
    .end local v3    # "i$":I
    .end local v5    # "arr$":[I
    .end local v6    # "len$":I
    .end local v9    # "index":I
    .restart local v4    # "index":I
    :cond_76
    goto/16 :goto_129

    .line 543
    .end local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .end local v4    # "index":I
    :pswitch_78
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    .line 544
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    .line 547
    .restart local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget v3, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    invoke-static {v3, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    .line 549
    .local v3, "macroNameValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "macroName":Ljava/lang/String;
    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 552
    goto/16 :goto_129

    .line 520
    .end local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .end local v3    # "macroNameValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "macroName":Ljava/lang/String;
    :pswitch_8e
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    .line 521
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    .line 522
    .restart local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v5, v5

    if-eq v4, v5, :cond_c5

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uneven map keys ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") and map values ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 527
    :cond_c5
    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 528
    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 529
    const/4 v4, 0x0

    .line 530
    .local v4, "index":I
    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v5    # "arr$":[I
    array-length v6, v5

    .restart local v6    # "len$":I
    move v7, v4

    move v4, v3

    .local v4, "i$":I
    .local v7, "index":I
    :goto_d9
    if-ge v4, v6, :cond_eb

    aget v8, v5, v4

    .line 531
    .local v8, "keyIndex":I
    iget-object v9, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v10, v7, 0x1

    .local v10, "index":I
    invoke-static {v8, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v11

    aput-object v11, v9, v7

    .line 530
    .end local v7    # "index":I
    .end local v8    # "keyIndex":I
    add-int/lit8 v4, v4, 0x1

    move v7, v10

    goto :goto_d9

    .line 534
    .end local v4    # "i$":I
    .end local v5    # "arr$":[I
    .end local v6    # "len$":I
    .end local v10    # "index":I
    .restart local v7    # "index":I
    :cond_eb
    const/4 v4, 0x0

    .line 535
    .end local v7    # "index":I
    .local v4, "index":I
    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v5    # "arr$":[I
    array-length v6, v5

    .local v3, "i$":I
    .restart local v6    # "len$":I
    :goto_ef
    if-ge v3, v6, :cond_101

    aget v7, v5, v3

    .line 536
    .local v7, "valueIndex":I
    iget-object v8, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v9, v4, 0x1

    .restart local v9    # "index":I
    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    aput-object v10, v8, v4

    .line 535
    .end local v4    # "index":I
    .end local v7    # "valueIndex":I
    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_ef

    .line 539
    .end local v3    # "i$":I
    .end local v5    # "arr$":[I
    .end local v6    # "len$":I
    .end local v9    # "index":I
    .restart local v4    # "index":I
    :cond_101
    goto :goto_129

    .line 508
    .end local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .end local v4    # "index":I
    :pswitch_102
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    .line 509
    .restart local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    .line 510
    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 511
    const/4 v4, 0x0

    .line 512
    .restart local v4    # "index":I
    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .restart local v5    # "arr$":[I
    array-length v6, v5

    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    :goto_115
    if-ge v3, v6, :cond_127

    aget v7, v5, v3

    .line 513
    .local v7, "listIndex":I
    iget-object v8, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v9, v4, 0x1

    .restart local v9    # "index":I
    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    aput-object v10, v8, v4

    .line 512
    .end local v4    # "index":I
    .end local v7    # "listIndex":I
    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_115

    .line 516
    .end local v3    # "i$":I
    .end local v5    # "arr$":[I
    .end local v6    # "len$":I
    .end local v9    # "index":I
    .restart local v4    # "index":I
    :cond_127
    goto :goto_129

    .line 573
    .end local v2    # "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .end local v4    # "index":I
    :pswitch_128
    move-object v1, v0

    .line 577
    :goto_129
    if-nez v1, :cond_13f

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 580
    :cond_13f
    aput-object v1, p2, p0

    .line 581
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 582
    return-object v1

    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_128
        :pswitch_102
        :pswitch_8e
        :pswitch_78
        :pswitch_128
        :pswitch_128
        :pswitch_51
        :pswitch_128
    .end packed-switch
.end method

.method public static getExpandedResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .registers 11
    .param p0, "resource"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    .local v0, "expandedValues":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v2, v3, :cond_17

    .line 425
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 428
    .end local v2    # "i":I
    :cond_17
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    move-result-object v2

    .line 431
    .local v2, "builder":Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v3, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    move v4, v1

    .local v4, "i":I
    :goto_21
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v5

    if-ge v4, v5, :cond_34

    .line 433
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v4

    invoke-static {v5, p0, v0, v4}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 435
    .end local v4    # "i":I
    :cond_34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v4, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    move v5, v1

    .local v5, "i":I
    :goto_3a
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v6, v6

    if-ge v5, v6, :cond_4d

    .line 437
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v6, v6, v5

    invoke-static {v6, p0, v0, v5}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 439
    .end local v5    # "i":I
    :cond_4d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v5, "macros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    move v6, v1

    .local v6, "i":I
    :goto_53
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v7, v7

    if-ge v6, v7, :cond_69

    .line 441
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v7, v7, v6

    invoke-static {v7, p0, v0, v6}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v7

    .line 443
    .local v7, "thisMacro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 444
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v7    # "thisMacro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 448
    .end local v6    # "i":I
    :cond_69
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v6, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v7, v6

    .local v1, "i$":I
    .local v7, "len$":I
    :goto_6c
    if-ge v1, v7, :cond_7a

    aget-object v8, v6, v1

    .line 449
    .local v8, "r":Lcom/google/analytics/containertag/proto/Serving$Rule;
    invoke-static {v8, v3, v5, v4, p0}, Lcom/google/tagmanager/ResourceUtil;->expandRule(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 448
    .end local v8    # "r":Lcom/google/analytics/containertag/proto/Serving$Rule;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 453
    .end local v1    # "i$":I
    .end local v6    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v7    # "len$":I
    :cond_7a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->setVersion(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 454
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->setResourceFormatVersion(I)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    .line 456
    invoke-virtual {v2}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1

    return-object v1
.end method

.method private static getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 4
    .param p0, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 591
    .local v0, "servingValue":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    if-nez v0, :cond_1e

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 594
    :cond_1e
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v1
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
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    .line 623
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p1, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_24

    .line 624
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 626
    :cond_24
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 611
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-ltz p1, :cond_5

    array-length v0, p0

    if-lt p1, v0, :cond_21

    .line 612
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    .line 614
    :cond_21
    aget-object v0, p0, p1

    return-object v0
.end method

.method private static logAndThrow(Ljava/lang/String;)V
    .registers 2
    .param p0, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

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

    .line 465
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 466
    .local v0, "result":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 467
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 468
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v1, :cond_1b

    .line 469
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 471
    :cond_1b
    return-object v0
.end method
