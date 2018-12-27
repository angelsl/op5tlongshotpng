.class Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;
.super Ljava/lang/Object;
.source "DebugResolvedRuleBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/DebugResolvedRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebugResolvedFunctionCallListTranslator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator$Type;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

.field private final type:I


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;I)V
    .registers 3
    .param p2, "type"    # I

    .line 109
    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->type:I

    .line 111
    return-void
.end method


# virtual methods
.method public translateAndAddAll(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "functions":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p2, "ruleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v0, "translatedList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 119
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-static {v3}, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->translateExpandedFunctionCall(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    goto :goto_3d

    .line 127
    :cond_33
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const-string v4, "Unknown"

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    .line 118
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 130
    .end local v2    # "i":I
    :cond_40
    new-array v1, v1, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 131
    .local v1, "translated":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->type:I

    packed-switch v2, :pswitch_data_82

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type in translateAndAddAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    goto :goto_80

    .line 142
    :pswitch_64
    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v2, v2, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 143
    goto :goto_80

    .line 139
    :pswitch_6b
    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v2, v2, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 140
    goto :goto_80

    .line 136
    :pswitch_72
    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v2, v2, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 137
    goto :goto_80

    .line 133
    :pswitch_79
    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v2, v2, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 134
    nop

    .line 148
    :goto_80
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_79
        :pswitch_72
        :pswitch_6b
        :pswitch_64
    .end packed-switch
.end method
