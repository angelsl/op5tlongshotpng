.class Lcom/google/tagmanager/NoopDataLayerEventEvaluationInfoBuilder;
.super Ljava/lang/Object;
.source "NoopDataLayerEventEvaluationInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .registers 2

    .line 12
    new-instance v0, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;-><init>()V

    return-object v0
.end method

.method public createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .registers 2

    .line 17
    new-instance v0, Lcom/google/tagmanager/NoopRuleEvaluationStepInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopRuleEvaluationStepInfoBuilder;-><init>()V

    return-object v0
.end method