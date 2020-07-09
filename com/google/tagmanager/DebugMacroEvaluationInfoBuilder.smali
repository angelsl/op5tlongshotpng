.class Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;
.super Ljava/lang/Object;
.source "DebugMacroEvaluationInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/MacroEvaluationInfoBuilder;


# instance fields
.field private macroEvaluationInfo:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;)V
    .locals 0
    .param p1, "macroEvaluationInfo"    # Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 17
    return-void
.end method


# virtual methods
.method public createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 22
    new-instance v0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)V

    return-object v0
.end method

.method public createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 28
    new-instance v0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;)V

    return-object v0
.end method
