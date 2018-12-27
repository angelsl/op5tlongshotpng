.class Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;
.super Ljava/lang/Object;
.source "DebugDataLayerEventEvaluationInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;


# instance fields
.field private dataLayerEvent:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;)V
    .registers 2
    .param p1, "dataLayerEvent"    # Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .registers 4

    .line 22
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    .line 23
    .local v0, "result":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v1, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v2, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v2, v0}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 24
    new-instance v1, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)V

    return-object v1
.end method

.method public createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 30
    new-instance v0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;)V

    return-object v0
.end method
