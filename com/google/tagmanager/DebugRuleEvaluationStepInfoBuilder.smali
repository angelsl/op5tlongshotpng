.class Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;
.super Ljava/lang/Object;
.source "DebugRuleEvaluationStepInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;


# instance fields
.field private ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;)V
    .registers 2
    .param p1, "ruleEvaluationStepInfo"    # Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;
    .registers 4

    .prologue
    .line 33
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    .line 34
    .local v0, "rule":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    iget-object v1, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v2, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-static {v2, v0}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 36
    new-instance v1, Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)V

    return-object v1
.end method

.method public setEnabledFunctions(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "enabledFunctions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 29
    return-void

    .line 24
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 25
    .local v0, "enabledFunction":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    iget-object v2, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v3, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v3, v3, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->translateExpandedFunctionCall(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    iput-object v3, v2, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    goto :goto_4
.end method
