.class Lcom/google/tagmanager/Runtime$3;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Runtime;->calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Runtime;

.field final synthetic val$addMacroRuleNames:Ljava/util/Map;

.field final synthetic val$addMacros:Ljava/util/Map;

.field final synthetic val$removeMacroRuleNames:Ljava/util/Map;

.field final synthetic val$removeMacros:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Runtime;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$3;->this$0:Lcom/google/tagmanager/Runtime;

    iput-object p2, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacros:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacroRuleNames:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacros:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacroRuleNames:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V
    .locals 5
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p4, "debugRuleBuilder"    # Lcom/google/tagmanager/ResolvedRuleBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")V"
        }
    .end annotation

    .line 410
    .local p2, "add":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p3, "remove":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacros:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    .local v0, "thisAddMacro":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacroRuleNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 412
    .local v1, "thisMacroEnablingRuleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 413
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-interface {p4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->getAddedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;->translateAndAddAll(Ljava/util/List;Ljava/util/List;)V

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacros:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 420
    .local v2, "thisRemoveMacro":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    iget-object v3, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacroRuleNames:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 421
    .local v3, "thisRemoveMacroRuleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 422
    invoke-interface {p3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 425
    invoke-interface {p4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->getRemovedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;->translateAndAddAll(Ljava/util/List;Ljava/util/List;)V

    .line 428
    :cond_1
    return-void
.end method
