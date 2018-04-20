.class Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;
.super Ljava/lang/Object;
.source "NoopMacroEvaluationInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/MacroEvaluationInfoBuilder;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .registers 2

    .prologue
    .line 11
    new-instance v0, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;-><init>()V

    return-object v0
.end method

.method public createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/tagmanager/NoopRuleEvaluationStepInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopRuleEvaluationStepInfoBuilder;-><init>()V

    return-object v0
.end method
