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

    .prologue
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
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "functions":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p2, "ruleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v2, "translatedList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_38

    .line 130
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 131
    .local v1, "translated":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget v3, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->type:I

    packed-switch v3, :pswitch_data_84

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown type in translateAndAddAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 148
    :goto_37
    return-void

    .line 119
    .end local v1    # "translated":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_38
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-static {v3}, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->translateExpandedFunctionCall(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_59

    .line 127
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const-string/jumbo v4, "Unknown"

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    .line 118
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 121
    :cond_59
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    goto :goto_56

    .line 133
    .restart local v1    # "translated":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :pswitch_68
    iget-object v3, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v3, v3, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    goto :goto_37

    .line 136
    :pswitch_6f
    iget-object v3, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v3, v3, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    goto :goto_37

    .line 139
    :pswitch_76
    iget-object v3, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v3, v3, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    goto :goto_37

    .line 142
    :pswitch_7d
    iget-object v3, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;->this$0:Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v3, v3, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v1, v3, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    goto :goto_37

    .line 131
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_68
        :pswitch_6f
        :pswitch_76
        :pswitch_7d
    .end packed-switch
.end method
